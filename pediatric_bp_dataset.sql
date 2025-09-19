-- PostgreSQL dataset for Pediatric Blood Pressure Study
-- Source: Vasudevan A, Thomas T, Kurpad A, Sachdev HS. JAMA Netw Open. 2022;5(10):e2239282.

-- Table 1: Sociodemographic and other individual characteristics
DROP TABLE IF EXISTS sociodemographics_bp;
CREATE TABLE sociodemographics_bp (
    age_group VARCHAR(20),
    characteristic VARCHAR(50),
    category VARCHAR(50),
    n_children INT,
    prevalence_bp NUMERIC(5,2),
    ci_lower NUMERIC(5,2),
    ci_upper NUMERIC(5,2),
    pr_unadjusted NUMERIC(5,2),
    pr_adjusted NUMERIC(5,2)
);

-- Table 2: Cardiometabolic risk factors
DROP TABLE IF EXISTS cardiometabolic_bp;
CREATE TABLE cardiometabolic_bp (
    age_group VARCHAR(20),
    risk_factor VARCHAR(50),
    prevalence_bp NUMERIC(5,2),
    ci_lower NUMERIC(5,2),
    ci_upper NUMERIC(5,2),
    pr_unadjusted NUMERIC(5,2),
    pr_adjusted NUMERIC(5,2)
);

-- Sample INSERTs from Table 1 (sociodemographics)
INSERT INTO sociodemographics_bp VALUES
('10-12y', 'Area', 'Rural', 2176, 35.80, 31.20, 40.60, 1.00, 1.00),
('10-12y', 'Area', 'Urban', 1652, 33.40, 28.40, 38.70, 0.88, 0.92),
('10-12y', 'Sex', 'Male', 2012, 33.20, 28.50, 38.30, 1.00, 1.00),
('10-12y', 'Sex', 'Female', 1816, 37.20, 32.70, 41.90, 1.04, 1.04),
('10-12y', 'BMI', 'Overweight/Obesity', 362, 35.50, 25.90, 46.40, 1.10, 1.17),
('≥13y', 'BMI', 'Overweight/Obesity', 589, 35.00, 28.60, 41.90, 1.30, 1.33);

-- Sample INSERTs from Table 2 (cardiometabolic risk factors)
INSERT INTO cardiometabolic_bp VALUES
('10-12y', 'High fasting glucose ≥100 mg/dL', 46.40, 37.00, 56.20, 1.18, 1.17),
('10-12y', 'High triglycerides ≥90 mg/dL', 39.40, 33.80, 45.40, 1.25, 1.26),
('10-12y', 'High LDL-C ≥110 mg/dL', 37.00, 29.60, 45.10, 1.12, 1.13),
('≥13y', 'High fasting glucose ≥100 mg/dL', 29.10, 21.00, 38.80, 1.24, 1.24),
('≥13y', 'High HbA1c ≥5.7%', 28.50, 23.20, 34.40, 1.14, 1.12),
('≥13y', 'High LDL-C ≥110 mg/dL', 33.00, 24.40, 42.80, 1.17, 1.12),
('≥13y', 'Low HDL-C ≤45 mg/dL', 23.10, 19.80, 26.80, 0.95, NULL);
