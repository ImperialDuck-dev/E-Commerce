<?php


// use to fetch cars data
class cars
{
    public $db = null;

    public function __construct(DBController $db)
    {
        if(!isset($db->con)) return null;
        $this->db =$db;
    }

    // fetch car data using getData method
    public function getCar_Data($table = 'cart')
    {
        $result = $this->db->con->query( query: "SELECT * FROM {$table}");

        $resultArray = array();

        // fetch car data one by one
        while($item = mysqli_fetch_array($result,MYSQLI_ASSOC))
        {
            $resultArray[] = $item;
        }

        return $resultArray;
    }
}
