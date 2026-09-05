 function uiBundle() {
    // Begin Swagger UI call region
    const ui = SwaggerUIBundle({
      url: "openapi.json",
      dom_id: '#swagger-ui',
      deepLinking: true,
      presets: [
        SwaggerUIBundle.presets.apis
      ],
      supportedSubmitMethods: []
    });
    // End Swagger UI call region

    window.ui = ui;
  };