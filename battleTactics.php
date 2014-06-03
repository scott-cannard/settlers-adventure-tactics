<?php
$map = $_GET['map'];
$battleNum = 0;

try
  {
  $conn = new PDO("sqlsrv:Server=(local)\SQLEXPRESS;Database=SettlersOnlineTactical", NULL, NULL);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
  $stmt_battlecount = $conn->prepare('SELECT TOP 1 BattleNum
                                      FROM Enemies e
	                                      LEFT JOIN Adventures a ON (e.ADVENTURE_FK = a.ID)
                                      WHERE (a.MapName = :map)
                                      ORDER BY BattleNum Desc');
  $stmt_battlecount->bindParam(':map', $map, PDO::PARAM_STR);


  $stmt_enemies = $conn->prepare('SELECT BattleNum, Qty, u.UnitName Unit
                                  FROM Enemies e
                                      LEFT JOIN Adventures a ON (e.ADVENTURE_FK = a.ID)
                                      LEFT JOIN Units u ON (e.UNIT_FK = u.ID)
                                  WHERE (a.MapName = :map AND e.BattleNum = :bnum)');
  $stmt_enemies->bindParam(':map', $map, PDO::PARAM_STR);
  $stmt_enemies->bindParam(':bnum', $battleNum, PDO::PARAM_INT);


  $stmt_players = $conn->prepare('SELECT BattleNum, Qty, u.UnitName Unit
                                  FROM Players p
                                      LEFT JOIN Adventures a ON (p.ADVENTURE_FK = a.ID)
                                      LEFT JOIN Units u ON (p.UNIT_FK = u.ID)
                                  WHERE (a.MapName = :map AND p.BattleNum = :bnum)');
  $stmt_players->bindParam(':map', $map, PDO::PARAM_STR);
  $stmt_players->bindParam(':bnum', $battleNum, PDO::PARAM_INT);

  $stmt_losses = $conn->prepare('SELECT BattleNum, MinLost, MaxLost, u.UnitName Unit
                                  FROM Losses l
                                      LEFT JOIN Adventures a ON (l.ADVENTURE_FK = a.ID)
                                      LEFT JOIN Units u ON (l.UNIT_FK = u.ID)
                                  WHERE (a.MapName = :map AND l.BattleNum = :bnum)');
  $stmt_losses->bindParam(':map', $map, PDO::PARAM_STR);
  $stmt_losses->bindParam(':bnum', $battleNum, PDO::PARAM_INT);



  $retvals = array();
  
  $stmt_battlecount->execute();
  $NumberOfBattles = $stmt_battlecount->fetch(PDO::FETCH_ASSOC)['BattleNum'];
  
  for ($battleNum = 1; $battleNum <= $NumberOfBattles; $battleNum++)
    {
    $enemy = array();
    $stmt_enemies->execute();
    while ($row = $stmt_enemies->fetch(PDO::FETCH_ASSOC))
      {
      array_push($enemy, $row['Qty'].":".$row['Unit']);
      }
      
    $player = array();
    $pList = array();
    $stmt_players->execute();
    while ($row = $stmt_players->fetch(PDO::FETCH_ASSOC))
      {
      array_push($player, $row['Qty'].":".$row['Unit']);
      if (array_search($row['Unit'], $pList) != FALSE)
        array_push($pList, $row['Unit']);
      }
    usort($pList, "orderByEnum");
    
    $loss = array();
    $stmt_losses->execute();
    while ($row = $stmt_losses->fetch(PDO::FETCH_ASSOC))
      {
      array_push($loss, $row['MinLost'].":".$row['MaxLost'].":".$row['Unit']);
      }
      
    array_push($retvals, json_encode(array($enemy, $player, $loss)));
    }
  }
catch(PDOException $e)
  {
  echo 'ERROR: ' . $e->getMessage();
  }
$conn = null;


// Final output
echo json_encode($retvals);






function orderByEnum($a, $b)
  {
  if ($a == $b)
    return 0;
  $ordered = array("Recruits", "Militia", "Soldiers", "Elites", "Cavalry", "Bowmen", "Longbowmen", "Crossbowmen", "Cannoneers");
  return (array_search($a, $ordered) < array_search($b, $ordered) ? -1 : 1);
  }
?>