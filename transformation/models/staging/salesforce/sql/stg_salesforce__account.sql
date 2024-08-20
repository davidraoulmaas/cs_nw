

with source as (

    select * from {{ source('salesforce', 'account') }}

),

renamed as (

    select
        {# some data conversions might be necessary here and there #}
        
        id as account_id,
        cast(isdeleted as boolean) as isdeleted, 
        masterrecordid,
        name,
        type,
        parentid,
        billingstreet,
        billingcity,
        billingstate,
        billingpostalcode,
        billingcountry,
        billinglatitude,
        billinglongitude,
        billinggeocodeaccuracy,
        shippingstreet,
        shippingcity,
        shippingstate,
        shippingpostalcode,
        shippingcountry,
        shippinglatitude,
        shippinglongitude,
        shippinggeocodeaccuracy,
        phone,
        fax,
        accountnumber,
        website,
        sic,
        industry,
        annualrevenue,
        numberofemployees,
        ownership,
        tickersymbol,
        description,
        rating,
        site,
        ownerid,
        createddate,
        createdbyid,
        lastmodifieddate,
        lastmodifiedbyid,
        systemmodstamp,
        lastactivitydate,
        jigsaw,
        jigsawcompanyid,
        cleanstatus,
        accountsource,
        dunsnumber,
        tradestyle,
        naicscode,
        naicsdesc,
        yearstarted,
        sicdesc,
        dandbcompanyid,
        operatinghoursid,
        customerpriority__c,
        sla__c,
        active__c,
        numberoflocations__c,
        upsellopportunity__c,
        slaserialnumber__c,
        cast(slaexpirationdate__c as date) as slaexpirationdate__c

    from source

)

select * from renamed
