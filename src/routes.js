module.exports = function(app) {
  app.get('/', (req, res) => {
    res.send('Hello from NASA App');
  });
};
