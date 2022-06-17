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
    public function getCar_Data($table = 'cars')
    {
        $result = $this->db->con->query("SELECT * FROM ($table)");

        $resultArray = array();

        // fetch car data one by one
        while($item = mysqli_fetch_array($result,MYSQLI_ASSOC))
        {
            $resultArray[] = $item;
        }

        return $resultArray;
    }

    // get product using item id
    public function getProduct($item_id = null,$table = 'cars_products')
    {
        if(isset($item_id))
        {
            $result = $this->db->con->query("SELECT * FROM {$table} WHERE item_id={$item_id}");
            $resultArray = array();

            // fetch car data one by one
            while($item = mysqli_fetch_array($result,MYSQLI_ASSOC))
            {
                $resultArray[] = $item;
            }

            return $resultArray;
        }

        }
    }


