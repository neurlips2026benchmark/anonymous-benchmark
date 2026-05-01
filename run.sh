### 1. Evaluate all DPI and IPI results

#!/usr/bin/env bash


python run_judge.py \
  --root neurlips_code


# ### 2. Evaluate all DPI results


python run_judge.py \
  --root neurlips_code \
  --attack DPI


# ### 3. Evaluate all IPI results

# 
python run_judge.py \
  --root neurlips_code \
  --attack IPI
# 

# ### 4. Evaluate all templates for one agent under DPI

# 
python run_judge.py \
  --root neurlips_code \
  --attack DPI \
  --agent NanoBrowser
# 

# 
python run_judge.py \
  --root neurlips_code \
  --attack DPI \
  --agent BrowserUse
# 

# ### 5. Evaluate all templates for one agent under IPI

# 
python run_judge.py \
  --root neurlips_code \
  --attack IPI \
  --agent NanoBrowser
# 

# 
python run_judge.py \
  --root neurlips_code \
  --attack IPI \
  --agent BrowserUse
# 

# ### 6. Evaluate one template for one agent under DPI


python run_judge.py \
  --root neurlips_code \
  --attack DPI \
  --agent NanoBrowser \
  --template_id E1.1



python run_judge.py \
  --root neurlips_code \
  --attack DPI \
  --agent BrowserUse \
  --template_id E1.1


# ### 7. Evaluate one template for one agent under IPI

# 
python run_judge.py \
  --root neurlips_code \
  --attack IPI \
  --agent NanoBrowser \
  --template_id T4.1
# 

# 
python run_judge.py \
  --root neurlips_code \
  --attack IPI \
  --agent BrowserUse \
  --template_id T4.1
# 