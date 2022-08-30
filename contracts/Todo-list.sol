// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract Todolist{
    uint public numberoftask = 0;

    struct Task{
        uint taskId;
        string taskName;
        int status;
    }

mapping(uint=>Task) public tasks;

constructor()public
{
    AddTask("Strive Hard");
}

function AddTask(string memory _taskName) public
    {
        numberoftask++;
        tasks[numberoftask]=Task(numberoftask,_taskName,-1);
    }
} 
