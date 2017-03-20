defmodule ListReplicationTest do
  use ExUnit.Case
  doctest ListReplication
  alias ListReplication, as: LR

  test "0 times any size list returns empty list" do
    assert LR.replicate(0, [1, 2, 3]) == []
  end

  test "1 times list any size returns same list" do
    assert LR.replicate(1, [1, 2, 3]) == [1, 2, 3]
  end

  test "n times list any size returns list duplicated by n" do
    assert LR.replicate(2, [1, 2, 3]) == [1, 1, 2, 2, 3, 3]
  end
end
