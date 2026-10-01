Create database Supply_chain_db;
use supply_chain_db;
select * from supply_chain_tb;
select count(*) as total_records from supply_chain_tb;
select sum(units_sold) as total_units_sold from supply_chain_tb ;
select sum(inventory_level) as total_inventory from supply_chain_tb ;
select avg(inventory_level) as avg_inventory from supply_chain_tb;
select sum(order_quantity) as total_order_quantity from supply_chain_tb;
select round(sum(inventory_level * unit_cost),2) as total_inventory_value
From supply_chain_tb;
select round(sum(units_sold * unit_price),2) as total_sales_value
from supply_chain_tb ;
select round(sum(units_sold * unit_cost),2) as total_cost 
from supply_chain_tb;
select round(sum(units_sold * unit_price) - sum(units_sold * unit_cost),2) as Total_profit
from  supply_chain_tb;
select round((sum(units_sold * unit_price) - sum(units_sold * unit_cost)) / sum(units_sold * unit_price)*100,2) as profit_margin 
from supply_chain_tb;
select round(avg(unit_price),2) as avg_unit_price 
from supply_chain_tb ;
select round(avg(unit_cost),2) as avg_unit_cost
from supply_chain_tb;
select count(distinct supplier_id) as total_suppliers 
from supply_chain_tb ;
select count(distinct warehouse_id) as total_warehouses
from supply_chain_tb;
select count(distinct sku_id) as total_SKUs 
from supply_chain_tb;
select round(avg(supplier_lead_time_days),2) as avg_lead_time_days
from supply_chain_tb;
select round(avg(reorder_point),2) as avg_reorder_point 
from supply_chain_tb;
select round(avg(order_quantity),2) as avg_order_quantity 
from supply_chain_tb;
select round(avg(demand_forecast),2) as avg_demand_forecast
from supply_chain_tb;
select round(avg(units_sold),2) as avg_units_sold 
from supply_chain_tb;
select round(avg(promotion_flag)*100,2) as promotion_rate
from supply_chain_tb;
select round(avg(stockout_flag)*100,2) as stockout_rate
from supply_chain_tb;
select sum(promotion_flag) as total_promotion_records from supply_chain_tb;
select region,
round(sum(units_sold * unit_price),2) as total_sales from supply_chain_tb
group by 1 order by 2 desc;
select warehouse_id,
round(sum(units_sold * unit_price),2) as total_sales
from supply_chain_tb
group by 1 order by 2 desc;
select supplier_id,
round(sum(units_sold * unit_price),2) AS  total_sales 
from supply_chain_tb 
group by 1 order by 2 desc ;
select supplier_id,
round(avg(supplier_lead_time_days),2) as avg_lead_time 
from supply_chain_tb
group by 1 order by 2 desc;
select region,
sum(units_sold) as tota_units_sold
from supply_chain_tb 
group by 1 order by 2 desc;
select region,
sum(inventory_level) as total_inventory 
from supply_chain_tb
group by 1 order by 2 desc;
select region,
round(sum(units_sold * unit_price) - sum(units_sold * unit_cost),2) as total_profit  
from supply_chain_tb 
group by 1 order by 2 desc;
select region,
round((sum(units_sold * unit_price) - sum(units_sold * unit_cost))/sum(units_sold * unit_price)*100,2) as profit_margin
from supply_chain_tb
group by 1 order by 2 desc;
select date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') as month,
round(sum(units_sold * unit_price),2) as total_sales
from supply_chain_tb 
group by  date_format(str_to_date(date,'%d/%m/%y'),'%y-%m')
order by month;
select date  from supply_chain_tb limit 10;
select date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') as month,
round(sum(units_sold * unit_price) - sum(units_sold * unit_cost)/ sum(units_sold * unit_price),2) as total_profit
from supply_chain_tb 
group by date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') 
order by month;
select promotion_flag,
sum(units_sold) as total_units_sold,
round(sum(units_sold * unit_price),2) as total_sales
from supply_chain_tb 
group by 1 order by 2 desc;
select promotion_flag,
round(sum(units_sold * unit_price) - sum(units_sold * unit_cost),2) as total_profit
from supply_chain_tb group by 1 order by 2 desc;
select warehouse_id,
round(avg(inventory_level),2) as avg_inventory
from supply_chain_tb group by 1 order by 2 desc;
select warehouse_id,
round( sum(inventory_level * unit_cost),2) as inventory_value
from supply_chain_tb  group by 1 order by 2 desc;
select supplier_id,
sum(order_quantity) as total_order_quantity
from supply_chain_tb  group by 1 order by 2 desc;
select supplier_id,
round(avg(reorder_point),2) as avg_reorder_point
from supply_chain_tb  group by 1 order by 2 desc;
select supplier_id,
round(avg(unit_cost),2) as avg_unit_cost
from supply_chain_tb  group by 1 order by 2;
select supplier_id,
round(sum(units_sold * unit_price),2) as total_sales
from supply_chain_tb group by 1 order by 2 desc;
select supplier_id,
round(sum(units_sold * unit_price) - sum(units_sold * unit_cost),2) as total_profit
from supply_chain_tb  group by 1 order by 2 desc;
select supplier_id,
round(avg(unit_cost),2) as avg_unit_cost,
round((sum(units_sold * unit_price) - sum(units_sold * unit_cost))/sum(units_sold * unit_price)*100,2) as profit_margin
from supply_chain_tb  group by 1 order by 2 desc;
select supplier_id,
round(avg(supplier_lead_time_days),2) as avg_lead_time
from supply_chain_tb  group by 1 order by 2 ;
select supplier_id,
round(avg(inventory_level),2) as avg_inventory
from supply_chain_tb  group by 1 order by 2 desc;
select supplier_id,
sum(order_quantity) as total_order_quantity,
round(avg(supplier_lead_time_days),2) as avg_lead_time
from supply_chain_tb  group by 1 order by 2 desc;
select sku_id,
round(sum(units_sold * unit_price),2) as total_sales
from supply_chain_tb group by 1 order by 2 desc;
select sku_id,
round(sum(units_sold * unit_price) - sum(units_sold * unit_cost),2) as total_profit
from  supply_chain_tb  group by 1 order by 2 desc;
select sku_id,
 round(avg(inventory_level),2) as avg_inventory_level 
 from  supply_chain_tb  group by 1 order by 2 desc;
 select sku_id,
 sum(units_sold) as total_units_sold
 from supply_chain_tb  group by 1 order by 2 desc;
 select date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') as month,
 sum(inventory_level) as total_inventory from supply_chain_tb  
 group by date_format(str_to_date(date,'%d/%m/%y'),'%y-%m')
 order by month;
 select date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') as month,
 sum(units_sold)  as total_units_sold
 from supply_chain_tb  group by date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') order by month;
 select date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') as month,
 sum(units_sold) as actual_units_sold,
 round(sum(demand_forecast),0) as forecast_demand 
 from supply_chain_tb group by date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') order by month;
 select date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') as month,
 sum(inventory_level) as total_inventory,
 round(sum(demand_forecast),0) as forecast_demand
 from supply_chain_tb group by date_format(str_to_date(date,'%d/%m/%y'),'%y-%m') order by month ;
 select warehouse_id,
 round(avg(inventory_level),2) as avg_inventory,
 round(avg(reorder_point),2) as avg_reorder_point
 from supply_chain_tb group by 1 order by 1;
 select region,
 promotion_flag,
 sum(units_sold) as total_units_sold,
 round(sum(units_sold * unit_price),2) as total_sales
 from supply_chain_tb group by 1,2 order by 1,2;
 select warehouse_id,
 round(sum(units_sold * unit_price) - sum(units_sold * unit_cost),2) as total_profit 
 from  supply_chain_tb group by 1 order by 2 desc;
 select warehouse_id,
 round((sum(units_sold  * unit_price) - sum(units_sold * unit_cost))/sum(units_sold * unit_price)*100,2) as profit_margin
 from  supply_chain_tb group by 1 order by 2 desc;
 select region,
 sum(inventory_level) as total_inventory,
 round(sum(units_sold * unit_price),2) as total_sales
 from  supply_chain_tb group by 1 order by 3 desc;
 select supplier_id,
 sum(inventory_level) as total_inventory,
 round(sum(units_sold * unit_price),2) as total_sales,
 round(sum(inventory_level)/sum(units_sold * unit_price)*100,2) as inventory_to_sales_ratio
 from  supply_chain_tb group by 1 order by 4 desc;
 select sku_id,
 round(sum(units_sold * unit_price) - sum( units_sold * unit_cost),2) as total_profit,
 round((sum(units_sold * unit_price)- sum(units_sold * unit_cost))/sum(units_sold * unit_cost)*100,2) as profit_margin
 from  supply_chain_tb group by  1 order by 3 desc;
 select sku_id,
 sum(units_sold) as total_units_sold,
 round(avg(inventory_level),2) as avg_invetory_level,
 round(sum(units_sold)/avg(inventory_level),2) as inventory_turnover
 from  supply_chain_tb group by 1 order by 4 desc;
 
 
 
