with
    source as (
        select
        SALESORDERID as sales_order_id
        , SALESORDERDETAILID as sales_order_detail_id
        , CARRIERTRACKINGNUMBER as carrier_tracking_number
        , ORDERQTY as order_quantity
        , PRODUCTID as product_id
        , SPECIALOFFERID as special_offer_id
        , UNITPRICE as unit_price
        , UNITPRICEDISCOUNT as unit_price_discount
        , ROWGUID as row_guid
        , cast(MODIFIEDDATE as date) as modified_date
    
        from {{source('erp_adventure_works', 'SALESORDERDETAIL')}}
    )

select *
from source