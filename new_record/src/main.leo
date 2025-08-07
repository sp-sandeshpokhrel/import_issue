import new_record2.aleo;
program new_record.aleo {
    record NewRecord {
        id: u32,
        values: u64,
        owner: address
    }

    transition create_record() -> NewRecord {
        return NewRecord { id:1u32, values:1u64,owner:self.signer };
    }

    transition check_own_record(yes_record:NewRecord)-> bool {
        if (yes_record.id == 1u32) {
            return true;
        } else {
            return false;
        }
    }

    transition check_record(yes_record:new_record2.aleo/TT)-> bool {
        if (yes_record.id == 1u32) {
            return true;
        } else {
            return false;
        }
    }
}