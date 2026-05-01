# REAL-Bench Evaluation Code

This repository contains the released evaluation code for REAL-Bench, including parsed agent execution logs and LLM-based judging scripts for DPI/IPI experiments.

---

## Environment

```bash
conda create -n realbench python=3.11
conda activate realbench
pip install openai
```

Set your OpenAI API key:

**Windows**
```bash
set OPENAI_API_KEY=your_api_key
```

**Linux/macOS**
```bash
export OPENAI_API_KEY=your_api_key
```

---

## Directory Structure

```
neurlips_code/
├── DPI_attack/
│   ├── Agent_Execution_log/
│   │   ├── BrowserUse/
|   |   |   ├──E1.1_log.json
|   |   |   └── ...
│   │   └── NanoBrowser/
│   ├── LLM_Judge/
│   │   ├── DPI_judge.py
│   │   ├── E1.1_Real_Bench.json
│   │   ├── E1.1_judge_prompt.txt
│   │   └── ...
│   └── Judge_Output/
│       ├── BrowserUse/
│       └── NanoBrowser/
│
├── IPI_attack/
│   ├── Agent_Execution_log/
│   ├── LLM_Judge/
│   └── Judge_Output/
```

---

## Run Examples

### 1. Evaluate all DPI and IPI results

```bash
python run_judge.py \
  --root neurlips_code
```

### 2. Evaluate all DPI results

```bash
python run_judge.py \
  --root neurlips_code \
  --attack DPI
```

### 3. Evaluate all IPI results

```bash
python run_judge.py \
  --root neurlips_code \
  --attack IPI
```

### 4. Evaluate all templates for one agent under DPI

```bash
python run_judge.py \
  --root neurlips_code \
  --attack DPI \
  --agent NanoBrowser
```

```bash
python run_judge.py \
  --root neurlips_code \
  --attack DPI \
  --agent BrowserUse
```

### 5. Evaluate all templates for one agent under IPI

```bash
python run_judge.py \
  --root neurlips_code \
  --attack IPI \
  --agent NanoBrowser
```

```bash
python run_judge.py \
  --root neurlips_code \
  --attack IPI \
  --agent BrowserUse
```

### 6. Evaluate one template for one agent under DPI

```bash
python run_judge.py \
  --root neurlips_code \
  --attack DPI \
  --agent NanoBrowser \
  --template_id E1.1
```

```bash
python run_judge.py \
  --root neurlips_code \
  --attack DPI \
  --agent BrowserUse \
  --template_id E1.1
```

### 7. Evaluate one template for one agent under IPI

```bash
python run_judge.py \
  --root neurlips_code \
  --attack IPI \
  --agent NanoBrowser \
  --template_id T4.1
```

```bash
python run_judge.py \
  --root neurlips_code \
  --attack IPI \
  --agent BrowserUse \
  --template_id T4.1
```


---

## Notes

- `--template_id` optional if single template
- Output is JSONL
