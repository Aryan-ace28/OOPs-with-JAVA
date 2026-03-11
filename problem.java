import java.util.*;

interface MonitoringStep {
    void execute();
}

interface IdentityVerification extends MonitoringStep {}
interface EnvironmentCheck extends MonitoringStep {}
interface BehaviourMonitoring extends MonitoringStep {}

class AIIdentityVerification implements IdentityVerification {
    public void execute() {
        System.out.println("AI verifying student identity...");
    }
}

class HumanIdentityVerification implements IdentityVerification {
    public void execute() {
        System.out.println("Human proctor verifying identity...");
    }
}

class BiometricIdentityVerification implements IdentityVerification {
    public void execute() {
        System.out.println("Biometric fingerprint verification...");
    }
}

class AIEnvironmentCheck implements EnvironmentCheck {
    public void execute() {
        System.out.println("AI scanning room environment...");
    }
}

class HumanEnvironmentCheck implements EnvironmentCheck {
    public void execute() {
        System.out.println("Human asks student to rotate camera...");
    }
}

class AIBehaviourMonitoring implements BehaviourMonitoring {
    public void execute() {
        System.out.println("AI monitoring suspicious movements...");
    }
}

class HumanBehaviourMonitoring implements BehaviourMonitoring {
    public void execute() {
        System.out.println("Human proctor watching student live...");
    }
}

class ProctoringController {
    private List<MonitoringStep> pipeline = new ArrayList<>();

    public void addStep(MonitoringStep step) {
        pipeline.add(step);
    }

    public void startExam() {
        System.out.println("\n--- Starting Proctoring Pipeline ---");
        for (MonitoringStep step : pipeline) {
            step.execute();
        }
        System.out.println("--- Exam Started ---\n");
    }
}

public class problem {
    public static void main(String[] args) {

        ProctoringController exam1 = new ProctoringController();
        exam1.addStep(new AIIdentityVerification());
        exam1.startExam();

        ProctoringController exam2 = new ProctoringController();
        exam2.addStep(new HumanIdentityVerification());
        exam2.addStep(new AIEnvironmentCheck());
        exam2.startExam();

        ProctoringController exam3 = new ProctoringController();
        exam3.addStep(new BiometricIdentityVerification());
        exam3.addStep(new HumanEnvironmentCheck());
        exam3.addStep(new AIBehaviourMonitoring());
        exam3.startExam();
    }
}

import java.util.*;

interface MonitoringStep {
    void execute();
}

interface IdentityVerification extends MonitoringStep {}
interface EnvironmentCheck extends MonitoringStep {}
interface BehaviourMonitoring extends MonitoringStep {}

class AIIdentityVerification implements IdentityVerification {
    public void execute() {
        System.out.println("AI verifying student identity...");
    }
}

class HumanIdentityVerification implements IdentityVerification {
    public void execute() {
        System.out.println("Human proctor verifying identity...");
    }
}

class BiometricIdentityVerification implements IdentityVerification {
    public void execute() {
        System.out.println("Biometric fingerprint verification...");
    }
}

class AIEnvironmentCheck implements EnvironmentCheck {
    public void execute() {
        System.out.println("AI scanning room environment...");
    }
}

class HumanEnvironmentCheck implements EnvironmentCheck {
    public void execute() {
        System.out.println("Human asks student to rotate camera...");
    }
}

class AIBehaviourMonitoring implements BehaviourMonitoring {
    public void execute() {
        System.out.println("AI monitoring suspicious movements...");
    }
}

class HumanBehaviourMonitoring implements BehaviourMonitoring {
    public void execute() {
        System.out.println("Human proctor watching student live...");
    }
}

class ProctoringController {
    private List<MonitoringStep> pipeline = new ArrayList<>();

    public void addStep(MonitoringStep step) {
        pipeline.add(step);
    }

    public void startExam() {
        System.out.println("\n--- Starting Proctoring Pipeline ---");
        for (MonitoringStep step : pipeline) {
            step.execute();
        }
        System.out.println("--- Exam Started ---\n");
    }
}

public class problem {
    public static void main(String[] args) {

        ProctoringController exam1 = new ProctoringController();
        exam1.addStep(new AIIdentityVerification());
        exam1.startExam();

        ProctoringController exam2 = new ProctoringController();
        exam2.addStep(new HumanIdentityVerification());
        exam2.addStep(new AIEnvironmentCheck());
        exam2.startExam();

        ProctoringController exam3 = new ProctoringController();
        exam3.addStep(new BiometricIdentityVerification());
        exam3.addStep(new HumanEnvironmentCheck());
        exam3.addStep(new AIBehaviourMonitoring());
        exam3.startExam();
    }
}
