module "resource_group"{
    source="../module/resource_group"
    resource_group_name="prodrg009"
    location ="central india"
}
 module "resource_group1"{
    source="../module/resource_group"
     resource_group_name="prodrg001"
     location ="central india"
 }

module "virtual_network"{
    depends_on = [ module.resource_group ]
    source="../module/virtual_network"
    vnetname="prodvnet009"
    location="central india"
    address_space=["10.0.0.0/16"]
    resource_group_name = "prodrg009"

}

module "frontend-subnet"{
    depends_on=[module.virtual_network]
    source="../module/subnet"
    resource_group_name="prodrg009"
    subnet_name="todo-frontend-subnet"
    vnetname="prodvnet009"
    address_prefixes=["10.0.1.0/24"]

}

module "backend-subnet"{
    depends_on=[module.virtual_network]
    source="../module/subnet"
    resource_group_name="prodrg009"
    subnet_name="todo-backend-subnet"
    vnetname="prodvnet009"
    address_prefixes=["10.0.2.0/24"]

}

#module"frontend-vm"{
    #source = "../module/virtual_machine"
    #nic_name="frontend_nic"
    #location="central india"
    #resource_group_name="prodrg009"
    #pip_name="publicip004"

#}


