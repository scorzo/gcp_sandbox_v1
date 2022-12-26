var express = require('express');
var router = express.Router();

//const bodyParser = require('body-parser');
//app.use(bodyParser.json());


// Create a new todo
router.post('/', (req, res) => {

  // Implement the route handler here
/*
  const { title, description } = req.body;

  if (!title || !description) {
    return res.status(400).send({ error: 'Invalid request' });
  }
*/

   //Create a new todo here

  res.send({ success: true });

});

// Get a list of all todos
router.get('/', (req, res) => {
  // Implement the route handler here
  res.send({ success: true });
});

// Get a single todo
router.get('/:id', (req, res) => {
  // Implement the route handler here
});

// Update a todo
router.put('/:id', (req, res) => {
  // Implement the route handler here
});

// Delete a todo
router.delete('/:id', (req, res) => {
  // Implement the route handler here
});

// Mark a todo as complete
router.patch('/:id/complete', (req, res) => {
  // Implement the route handler here
});

// Mark a todo as incomplete
router.patch('/:id/incomplete', (req, res) => {
  // Implement the route handler here
});



module.exports = router;
