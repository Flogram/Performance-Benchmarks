#include <stdio.h>
#include <math.h>

#define G 6.67430e-11 // Gravitational constant
#define NUM_BODIES 3
#define DELTA_TIME 1e-3
#define NUM_STEPS 1000

typedef struct {
    double mass;
    double position[3]; // position[0] = x, position[1] = y, position[2] = z
    double velocity[3]; // velocity[0] = vx, velocity[1] = vy, velocity[2] = vz
} Body;

void calculateForce(Body *a, Body *b, double forceResult[3]) {
    double distanceVector[3];
    double distanceSquared = 0;
    double forceMagnitude;
    
    // Calculate distance vector and squared distance
    for (int i = 0; i < 3; i++) {
        distanceVector[i] = b->position[i] - a->position[i];
        distanceSquared += distanceVector[i] * distanceVector[i];
    }
    
    // Calculate force magnitude
    forceMagnitude = G * a->mass * b->mass / distanceSquared;
    
    // Calculate force vector
    double distance = sqrt(distanceSquared);
    for (int i = 0; i < 3; i++) {
        forceResult[i] = forceMagnitude * distanceVector[i] / distance;
    }
}

void updateVelocity(Body *body, double force[3], double deltaTime) {
    for (int i = 0; i < 3; i++) {
        body->velocity[i] += force[i] / body->mass * deltaTime;
    }
}

void updatePosition(Body *body, double deltaTime) {
    for (int i = 0; i < 3; i++) {
        body->position[i] += body->velocity[i] * deltaTime;
    }
}

int main() {
    Body bodies[NUM_BODIES] = {
        // Initialize bodies with mass, position, and velocity
        // Example: Sun, Earth, Mars (not to scale or accurate initial conditions)
        {1.989e30, {0, 0, 0}, {0, 0, 0}}, // Sun
        {5.972e24, {1.496e11, 0, 0}, {0, 29780, 0}}, // Earth
        // Add more bodies as needed
    };

    for (int step = 0; step < NUM_STEPS; step++) {
        for (int i = 0; i < NUM_BODIES; i++) {
            double totalForce[3] = {0, 0, 0};

            for (int j = 0; j < NUM_BODIES; j++) {
                if (i != j) {
                    double force[3];
                    calculateForce(&bodies[i], &bodies[j], force);

                    for (int k = 0; k < 3; k++) {
                        totalForce[k] += force[k];
                    }
                }
            }

            updateVelocity(&bodies[i], totalForce, DELTA_TIME);
        }

        for (int i = 0; i < NUM_BODIES; i++) {
            updatePosition(&bodies[i], DELTA_TIME);
        }

        // Optionally: Print positions here for visualization
    }

    return 0;
}
