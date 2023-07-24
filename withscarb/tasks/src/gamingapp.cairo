use debug::PrintTrait;

#[derive(Copy, Drop)]

struct InventoryItem {
    name: felt252,
    description: felt252,
    quantity: u64,
    equipped: bool,
}


trait EquipTrait{
    fn equipItem(ref self: InventoryItem) -> bool;
    fn unequipItem(ref self: InventoryItem) -> bool;
    fn isEquipped(ref self: InventoryItem) -> bool;
}

impl EquipTraitImpl of EquipTrait {

    fn equipItem(ref self: InventoryItem) -> bool{
        if self.equipped {
            false
        } else {
            self.equipped = true;
            true
        }
    }

    // Method to unequip the item
    fn unequipItem(ref self: InventoryItem) -> bool {
        if self.equipped {
            self.equipped = false;
            true
        } else {
            false
        }
    }

    // Method to check if the item is equipped
    fn isEquipped(ref self: InventoryItem) -> bool {
        self.equipped
    }
}

fn main() {
    let mut sword = InventoryItem{name: 'Sword',description: 'A sharp blade', quantity: 1,equipped: false};
    let mut shield = InventoryItem{name:'Shield',description: 'A sturdy shield',quantity: 1, equipped : false};

    let equip1 = sword.equipItem();
    let equip2 = shield.equipItem();

    if equip1{
        'equiped!'.print();
    }else{
        'already eqiped!'.print();
    }

    if equip2{
        'equiped!'.print();
    }else{
        'already eqiped!'.print();
    }


    let unequip1 = sword.unequipItem();
    let unequip2 = shield.unequipItem();

    if unequip1{
        'unequiped!'.print();
    }else{
        'already uneqiped!'.print();
    }

    if equip2{
        'unequiped!'.print();
    }else{
        'already uneqiped!'.print();
    }
}

