# AI for sales and business development

The most useful starting point is not “write me a sales email.” It is work that
already has source material and a recognizable correct or useful outcome.

## Good first workflows

- Convert meeting notes into decisions, owners, and follow-up questions.
- Extract opportunities, objections, dates, and commitments from supplied notes.
- Normalize inconsistent account notes into a common structure.
- Compare several proposals against stated requirements.
- Classify feedback while retaining the evidence behind each classification.
- Produce a management summary from an already-verified analysis.
- Identify missing information before an account review.

## A reliable pattern

Ask the model to separate extraction from interpretation:

1. Extract only facts present in the source.
2. Attach supporting evidence to each extracted fact.
3. Mark conflicts, ambiguity, and missing fields.
4. Analyze the verified facts for patterns.
5. Recommend actions while labeling assumptions.
6. Format the result for the person who will use it.

This makes a polished but unsupported claim easier to detect.

## Example request

> Using only the account notes below, extract account, opportunity, estimated
> value, stage, objection, last contact, promised action, owner, and due date.
> Do not fill missing values from general knowledge. Use `unknown` when the
> notes do not say. Add a short evidence excerpt for every non-empty field.
> After the extraction, list contradictions and the three most important
> follow-up questions. Do not recommend a sales action until the extraction is
> complete.

The request can later add organization-specific terminology, but public
examples in this repository remain synthetic and company-neutral.

## Moving toward market-intelligence data

Licensed market-intelligence products can inspire generic exercises such as:

- translating a natural-language question into explicit filters;
- distinguishing source facts from model-generated conclusions;
- comparing segments, regions, categories, or time periods;
- identifying missing denominators or misleading comparisons;
- producing a reusable analysis brief; and
- verifying that a narrative matches the returned data.

Do not publish vendor exports, proprietary taxonomies, credentials, internal
prompts, or branded customer data. Reconstruct the learning objective with
synthetic inputs.

