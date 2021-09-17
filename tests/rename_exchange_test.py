import rename_exchange

import pytest


def test_rename_exchange_successful(tmp_path):
    file_1 = tmp_path.joinpath('f1')
    file_1.write_text('file 1')
    file_2 = tmp_path.joinpath('f2')
    file_2.write_text('file 2')

    rename_exchange.rename_exchange(str(file_1), str(file_2))

    # Should swap
    assert file_1.read_text() == 'file 2'
    assert file_2.read_text() == 'file 1'


def test_rename_exchange_file_does_not_exist(tmp_path):

    dne_1 = tmp_path.joinpath('dne')
    dne_2 = tmp_path.joinpath('dne2')

    with pytest.raises(OSError):
        rename_exchange.rename_exchange(str(dne_1), str(dne_2))
