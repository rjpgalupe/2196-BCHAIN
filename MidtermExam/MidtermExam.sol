// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract GradeContract {
    address public owner;
    string public studentName;
    uint256 public prelimGrade;
    uint256 public midtermGrade;
    uint256 public finalGrade;
    enum GradeStatus {Pass, Fail}

    GradeStatus public gradeStatus;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setName(string calldata _studentName) public {
        studentName = _studentName;
    }

    event GradeComputed (string studentName, GradeStatus gradeStatus);

    constructor() {
        owner = msg.sender;
    }

    function setPrelimGrade(uint256 _prelimGrade) external onlyOwner{
        prelimGrade = _prelimGrade;
    }

    function setMidtermGrade(uint256 _midtermGrade) external  onlyOwner{
        midtermGrade = _midtermGrade;
    }

    function setFinalGrade(uint256 _finalGrade) external onlyOwner{
        finalGrade = _finalGrade;
    }

    function calculateGrade() external onlyOwner{
        uint256 averageGrade = (prelimGrade + midtermGrade + finalGrade) / 3;

        if (averageGrade >= 50) {
            gradeStatus = GradeStatus.Pass;
        } else {
            gradeStatus = GradeStatus.Fail;
        }
    }

}