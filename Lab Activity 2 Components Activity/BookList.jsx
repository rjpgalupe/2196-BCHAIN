import React from "react";

class Book extends React.Component{
    render() {
        return(
            <div>
                <ul>
                    <h3>BookList</h3>
                    <li>A Brief History of Time</li>
                    <li>Cosmos</li>
                    <li>Packing for Mars</li>
                </ul>
            </div>
        );
    }
}

export default Book;

