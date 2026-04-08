import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job
from awsgluedq.transforms import EvaluateDataQuality

args = getResolvedOptions(sys.argv, ['JOB_NAME'])
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)

# Default ruleset used by all target nodes with data quality enabled
DEFAULT_DATA_QUALITY_RULESET = """
    Rules = [
        ColumnCount > 0
    ]
"""

# Script generated for node Amazon S3
AmazonS3_node1775540826748 = glueContext.create_dynamic_frame.from_options(format_options={"quoteChar": "\"", "withHeader": True, "separator": ",", "optimizePerformance": False}, connection_type="s3", format="csv", connection_options={"paths": ["s3://aws-data-pipeline-tara-912163986157-us-east-1-an/raw/amazon_data/"], "recurse": True}, transformation_ctx="AmazonS3_node1775540826748")

# Script generated for node Change Schema
ChangeSchema_node1775540874996 = ApplyMapping.apply(frame=AmazonS3_node1775540826748, mappings=[("product_id", "string", "product_id", "string"), ("product_name", "string", "product_name", "string"), ("category", "string", "category", "string"), ("discounted_price", "string", "discounted_price", "string"), ("actual_price", "string", "actual_price", "string"), ("discount_percentage", "string", "discount_percentage", "string"), ("rating", "string", "rating", "string"), ("rating_count", "string", "rating_count", "string"), ("about_product", "string", "about_product", "string"), ("user_id", "string", "user_id", "string"), ("user_name", "string", "user_name", "string"), ("review_id", "string", "review_id", "string"), ("review_title", "string", "review_title", "string"), ("review_content", "string", "review_content", "string"), ("img_link", "string", "img_link", "string"), ("product_link", "string", "product_link", "string")], transformation_ctx="ChangeSchema_node1775540874996")

# Script generated for node Amazon S3
EvaluateDataQuality().process_rows(frame=ChangeSchema_node1775540874996, ruleset=DEFAULT_DATA_QUALITY_RULESET, publishing_options={"dataQualityEvaluationContext": "EvaluateDataQuality_node1775540329807", "enableDataQualityResultsPublishing": True}, additional_options={"dataQualityResultsPublishing.strategy": "BEST_EFFORT", "observations.scope": "ALL"})
AmazonS3_node1775540884509 = glueContext.write_dynamic_frame.from_options(frame=ChangeSchema_node1775540874996, connection_type="s3", format="glueparquet", connection_options={"path": "s3://aws-data-pipeline-tara-912163986157-us-east-1-an/processed/amazon_data/", "partitionKeys": []}, format_options={"compression": "snappy"}, transformation_ctx="AmazonS3_node1775540884509")

job.commit()