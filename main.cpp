#include "app.hpp"
class App: public VkApp {
    public:
    void init() override {
        //init
    }
    void update() override {
        //update
    }
    void cleanup() override {
        //cleanup
    }
    ~App() override = default;
};
int main() {
    std::unique_ptr<VkApp> app = std::make_unique<App>();
    VkInit w(std::move(app));
    try {
        w.run();
    } catch (const std::exception& e) {
        std::cerr << e.what() << std::endl;
        return 1;
    }
    return 0;
}
