interface IdentityVerification {
    void verifyIdentity();
}

interface EnvironmentCheck {
    void checkEnvironment();
}

interface BehaviourMonitoring {
    void monitorBehaviour();
}

class AIIdentityVerification implements IdentityVerification {
    public void verifyIdentity() {
        System.out.println("AI-based identity verification...");
    }
}

class HumanIdentityVerification implements IdentityVerification {
    public void verifyIdentity() {
        System.out.println("Human-assisted identity verification...");
    }
}

class BiometricIdentityVerification implements IdentityVerification {
    public void verifyIdentity() {
        System.out.println("Biometric identity verification...");
    }
}

class AIEnvironmentCheck implements EnvironmentCheck {
    public void checkEnvironment() {
        System.out.println("AI checking exam room...");
    }
}

class HumanEnvironmentCheck implements EnvironmentCheck {
    public void checkEnvironment() {
        System.out.println("Human checking exam room...");
    }
}

class AIBehaviourMonitoring implements BehaviourMonitoring {
    public void monitorBehaviour() {
        System.out.println("AI monitoring behaviour...");
    }
}

class HumanBehaviourMonitoring implements BehaviourMonitoring {
    public void monitorBehaviour() {
        System.out.println("Human monitoring behaviour...");
    }
}

class ProctoringController {

    private IdentityVerification idVerifier;
    private EnvironmentCheck envChecker;
    private BehaviourMonitoring behaviourMonitor;

    public ProctoringController(
            IdentityVerification idVerifier,
            EnvironmentCheck envChecker,
            BehaviourMonitoring behaviourMonitor) {

        this.idVerifier = idVerifier;
        this.envChecker = envChecker;
        this.behaviourMonitor = behaviourMonitor;
    }

    public void conductProctoring() {

        System.out.println("\n--- Starting Proctoring ---");

        if (idVerifier != null)
            idVerifier.verifyIdentity();

        if (envChecker != null)
            envChecker.checkEnvironment();

        if (behaviourMonitor != null)
            behaviourMonitor.monitorBehaviour();

        System.out.println("--- Proctoring Completed ---\n");
    }
}

public class ProctoringSystem {

    public static void main(String[] args) {

        System.out.println("CASE 1: Simple Exam");

        ProctoringController simpleExam =
                new ProctoringController(
                        new AIIdentityVerification(),
                        null,
                        null
                );

        simpleExam.conductProctoring();

        System.out.println("CASE 2: Strict Exam");

        ProctoringController strictExam =
                new ProctoringController(
                        new BiometricIdentityVerification(),
                        new AIEnvironmentCheck(),
                        new HumanBehaviourMonitoring()
                );

        strictExam.conductProctoring();
    }
}
