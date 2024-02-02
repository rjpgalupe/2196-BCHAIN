import React, { useState } from "react";
import './App.css';

const BibleQuiz = () => {
    const [ answer, setAnswer ] = useState(null);
    const [showResult, setShowResult] = useState(false);

    return(
        <div>
          <h1>The Bible Quiz</h1>
          <h3>The Bible consist of Old and New Testaments.</h3>
            {showResult && (
                <div>
                    {answer === true && <h3 className="show1">Correct!!</h3>}
                    <h4 className="Correct">Correct!!!</h4>
                </div>
              )}
            <h3>Moses led the Israelites our of Egypt.</h3>
            {showResult && (
                <div>
                    {answer === true && <h3 className="show1">Correct!!</h3>}
                    <h4 className="Correct">Correct!!!</h4>
                </div>
              )}
              <h3>The Sermon on the Mount is found in the Book of Luke.</h3>
              {showResult && (
                <div>
                    {answer === true && <h3 className="show1">Correct!!</h3>}
                    <h4 className="Incorrect">Incorrect!!!</h4>
                </div>
              )}
              <button onClick={() => setShowResult(true)}>Show</button>
              <button onClick={() => setShowResult(false)}>Hide</button>
        </div>
    );
        
}

export default BibleQuiz