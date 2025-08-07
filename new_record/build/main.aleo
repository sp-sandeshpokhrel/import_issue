import new_record2.aleo;
program new_record.aleo;

record NewRecord:
    owner as address.private;
    id as u32.private;
    values as u64.private;

function create_record:
    cast self.signer 1u32 1u64 into r0 as NewRecord.record;
    output r0 as NewRecord.record;

function check_own_record:
    input r0 as NewRecord.record;
    is.eq r0.id 1u32 into r1;
    ternary r1 true false into r2;
    output r2 as boolean.private;

function check_record:
    input r0 as new_record2.aleo/TT.record;
    is.eq r0.id 1u32 into r1;
    ternary r1 true false into r2;
    output r2 as boolean.private;
