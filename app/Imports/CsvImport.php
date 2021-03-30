<?php

namespace App\Imports;

use App\Voucher;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class CsvImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Voucher([
            'id' => $row['id'],
            'VoucherCode' => $row['vouchercode'],

        ]);
        
    }
}
