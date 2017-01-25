.class public Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
.super Ljava/lang/Object;
.source "EasySqlQueryModel.java"

# interfaces
.implements Luk/co/alt236/easycursor/EasyQueryModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;,
        Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    }
.end annotation


# static fields
.field private static final FIELD_DISTINCT:Ljava/lang/String; = "distinct"

.field private static final FIELD_GROUP_BY:Ljava/lang/String; = "groupBy"

.field private static final FIELD_HAVING:Ljava/lang/String; = "having"

.field private static final FIELD_LIMIT:Ljava/lang/String; = "limit"

.field private static final FIELD_MODEL_COMMENT:Ljava/lang/String; = "modelComment"

.field private static final FIELD_MODEL_TAG:Ljava/lang/String; = "modelTag"

.field private static final FIELD_MODEL_VERSION:Ljava/lang/String; = "modelVersion"

.field private static final FIELD_PROJECTION_IN:Ljava/lang/String; = "projectionIn"

.field private static final FIELD_QUERY_TYPE:Ljava/lang/String; = "queryType"

.field private static final FIELD_RAW_SQL:Ljava/lang/String; = "rawSql"

.field private static final FIELD_SELECTION:Ljava/lang/String; = "selection"

.field private static final FIELD_SELECTION_ARGS:Ljava/lang/String; = "selectionArgs"

.field private static final FIELD_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field private static final FIELD_STRICT:Ljava/lang/String; = "strict"

.field private static final FIELD_TABLES:Ljava/lang/String; = "tables"

.field public static final QUERY_TYPE_MANAGED:I = 0x1

.field public static final QUERY_TYPE_RAW:I = 0x2

.field public static final QUERY_TYPE_UNINITIALISED:I


# instance fields
.field private final mDistinct:Z

.field private final mGroupBy:Ljava/lang/String;

.field private final mHaving:Ljava/lang/String;

.field private final mLimit:Ljava/lang/String;

.field private mModelComment:Ljava/lang/String;

.field private mModelTag:Ljava/lang/String;

.field private mModelVersion:I

.field private final mProjectionIn:[Ljava/lang/String;

.field private final mQueryType:I

.field private final mRawSql:Ljava/lang/String;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mSortOrder:Ljava/lang/String;

.field private final mStrict:Z

.field private final mTables:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "payload":Lorg/json/JSONObject;
    const-string v1, "distinct"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    .line 163
    const-string v1, "groupBy"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    .line 164
    const-string v1, "having"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    .line 165
    const-string v1, "limit"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    .line 166
    const-string v1, "modelComment"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    .line 167
    const-string v1, "modelTag"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    .line 168
    const-string v1, "modelVersion"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    .line 169
    const-string v1, "projectionIn"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getStringArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    .line 170
    const-string v1, "rawSql"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    .line 171
    const-string v1, "selection"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    .line 172
    const-string v1, "selectionArgs"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getStringArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    .line 173
    const-string v1, "sortOrder"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    .line 174
    const-string v1, "strict"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    .line 175
    const-string v1, "tables"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    .line 176
    const-string v1, "queryType"

    invoke-static {v0, v1}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    .line 177
    return-void
.end method

.method private constructor <init>(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)V
    .locals 3
    .param p1, "builder"    # Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    .line 90
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    .line 93
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->modelComment:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->access$0(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    .line 94
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->modelTag:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->access$1(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    .line 95
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->modelVersion:I
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->access$2(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)I

    move-result v0

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    .line 96
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    .line 97
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->rawSql:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->access$3(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    .line 99
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->access$4(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    .line 100
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    .line 101
    iput-boolean v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    .line 102
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;-><init>(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)V

    return-void
.end method

.method private constructor <init>(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)V
    .locals 1
    .param p1, "builder"    # Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->distinct:Z
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$0(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    .line 108
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->groupBy:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$1(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    .line 109
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->having:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$2(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    .line 110
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->limit:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$3(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    .line 111
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->modelComment:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$4(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    .line 112
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->modelTag:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$5(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    .line 113
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->modelVersion:I
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$6(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)I

    move-result v0

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    .line 114
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->projectionIn:[Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$7(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    .line 116
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->selection:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$8(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    .line 117
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$9(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    .line 118
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->sortOrder:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$10(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    .line 119
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->strict:Z
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$11(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    .line 120
    # getter for: Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->tables:Ljava/lang/String;
    invoke-static {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->access$12(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;-><init>(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)V

    return-void
.end method

.method public constructor <init>(Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;)V
    .locals 2
    .param p1, "builder"    # Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->isDistinct()Z

    move-result v0

    iput-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    .line 72
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getGroupBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getHaving()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getLimit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    .line 78
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getProjectionIn()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getRawSql()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getSelection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->isStrict()Z

    move-result v0

    iput-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    .line 84
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getTables()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->getQueryType()I

    move-result v0

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    .line 86
    return-void
.end method

.method public constructor <init>(Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlRawQueryBuilder;)V
    .locals 3
    .param p1, "builder"    # Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlRawQueryBuilder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    .line 126
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    .line 131
    iput v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    .line 132
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    .line 133
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlRawQueryBuilder;->getRawSql()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    .line 135
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlRawQueryBuilder;->getWhereArgs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    .line 136
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    .line 137
    iput-boolean v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    .line 138
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    .line 139
    const/4 v0, 0x2

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    .line 140
    return-void
.end method

.method public constructor <init>(Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;)V
    .locals 2
    .param p1, "builder"    # Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->isDistinct()Z

    move-result v0

    iput-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    .line 144
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->getGroupBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    .line 145
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->getHaving()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    .line 146
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->getLimit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    .line 150
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->getSelect()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    .line 151
    iput-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    .line 152
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->getWhere()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    .line 153
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->getWhereArgs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    .line 154
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->getOrderBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    .line 155
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->isStrict()Z

    move-result v0

    iput-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    .line 156
    invoke-interface {p1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/interfaces/SqlSelectBuilder;->getTables()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    .line 158
    return-void
.end method

.method private executeQuery(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 288
    iget v10, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    .line 291
    .local v10, "queryType":I
    packed-switch v10, :pswitch_data_0

    .line 309
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempted to execute a query of an unknown query type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :pswitch_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 294
    .local v0, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->getTables()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->isDistinct()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 297
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 298
    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->isStrict()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 301
    :cond_0
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    iget-object v6, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    iget-object v7, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    iget-object v8, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 312
    .end local v0    # "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 313
    return-object v9

    .line 304
    .end local v9    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 305
    .restart local v9    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 307
    .end local v9    # "cursor":Landroid/database/Cursor;
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to execute an uninitialised query model"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    if-ne p0, p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 184
    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 186
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 187
    check-cast v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    .line 188
    .local v0, "other":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    iget-boolean v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    iget-boolean v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 189
    goto :goto_0

    .line 190
    :cond_4
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 191
    iget-object v3, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 192
    goto :goto_0

    .line 193
    :cond_5
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 194
    goto :goto_0

    .line 195
    :cond_6
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 196
    iget-object v3, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 197
    goto :goto_0

    .line 198
    :cond_7
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 199
    goto :goto_0

    .line 200
    :cond_8
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 201
    iget-object v3, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 202
    goto :goto_0

    .line 203
    :cond_9
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 204
    goto :goto_0

    .line 205
    :cond_a
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 206
    iget-object v3, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    .line 207
    goto :goto_0

    .line 208
    :cond_b
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 209
    goto :goto_0

    .line 210
    :cond_c
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 211
    iget-object v3, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    if-eqz v3, :cond_e

    move v1, v2

    .line 212
    goto :goto_0

    .line 213
    :cond_d
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    .line 214
    goto/16 :goto_0

    .line 215
    :cond_e
    iget v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    iget v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    if-eq v3, v4, :cond_f

    move v1, v2

    .line 216
    goto/16 :goto_0

    .line 217
    :cond_f
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move v1, v2

    .line 218
    goto/16 :goto_0

    .line 219
    :cond_10
    iget v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    iget v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 220
    goto/16 :goto_0

    .line 221
    :cond_11
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 222
    iget-object v3, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    if-eqz v3, :cond_13

    move v1, v2

    .line 223
    goto/16 :goto_0

    .line 224
    :cond_12
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 225
    goto/16 :goto_0

    .line 226
    :cond_13
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 227
    iget-object v3, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    if-eqz v3, :cond_15

    move v1, v2

    .line 228
    goto/16 :goto_0

    .line 229
    :cond_14
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 230
    goto/16 :goto_0

    .line 231
    :cond_15
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    move v1, v2

    .line 232
    goto/16 :goto_0

    .line 233
    :cond_16
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 234
    iget-object v3, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    if-eqz v3, :cond_18

    move v1, v2

    .line 235
    goto/16 :goto_0

    .line 236
    :cond_17
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    move v1, v2

    .line 237
    goto/16 :goto_0

    .line 238
    :cond_18
    iget-boolean v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    iget-boolean v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    if-eq v3, v4, :cond_19

    move v1, v2

    .line 239
    goto/16 :goto_0

    .line 240
    :cond_19
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 241
    iget-object v3, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 242
    goto/16 :goto_0

    .line 243
    :cond_1a
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    iget-object v4, v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 244
    goto/16 :goto_0
.end method

.method public execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 258
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->executeQuery(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;)V

    return-object v0
.end method

.method public execute(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<+",
            "Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p2, "easyCursorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 278
    invoke-direct {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->executeQuery(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 279
    .local v0, "c":Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 280
    new-instance v1, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v1, v0, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;)V

    .line 282
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/database/Cursor;

    aput-object v2, v1, v3

    const-class v2, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    aput-object v2, v1, v4

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object p0, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_0
.end method

.method public getGroupBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    return-object v0
.end method

.method public getHaving()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getModelComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    return-object v0
.end method

.method public getModelTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    return-object v0
.end method

.method public getModelVersion()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    return v0
.end method

.method public getProjectionIn()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    return-object v0
.end method

.method public getQueryType()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    return v0
.end method

.method public getRawSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    const/4 v5, 0x0

    .line 427
    const/16 v0, 0x1f

    .line 428
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 429
    .local v1, "result":I
    iget-boolean v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 430
    mul-int/lit8 v6, v1, 0x1f

    .line 431
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v5

    .line 430
    :goto_1
    add-int v1, v6, v2

    .line 432
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v5

    :goto_2
    add-int v1, v6, v2

    .line 433
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v5

    :goto_3
    add-int v1, v6, v2

    .line 434
    mul-int/lit8 v6, v1, 0x1f

    .line 435
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v5

    .line 434
    :goto_4
    add-int v1, v6, v2

    .line 436
    mul-int/lit8 v6, v1, 0x1f

    .line 437
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v5

    .line 436
    :goto_5
    add-int v1, v6, v2

    .line 438
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    add-int v1, v2, v6

    .line 439
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v6

    add-int v1, v2, v6

    .line 440
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    add-int v1, v2, v6

    .line 441
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v5

    :goto_6
    add-int v1, v6, v2

    .line 442
    mul-int/lit8 v6, v1, 0x1f

    .line 443
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v5

    .line 442
    :goto_7
    add-int v1, v6, v2

    .line 444
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v6

    add-int v1, v2, v6

    .line 445
    mul-int/lit8 v6, v1, 0x1f

    .line 446
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v5

    .line 445
    :goto_8
    add-int v1, v6, v2

    .line 447
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    if-eqz v6, :cond_9

    :goto_9
    add-int v1, v2, v3

    .line 448
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    if-nez v3, :cond_a

    :goto_a
    add-int v1, v2, v5

    .line 449
    return v1

    :cond_0
    move v2, v4

    .line 429
    goto :goto_0

    .line 431
    :cond_1
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 432
    :cond_2
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 433
    :cond_3
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 435
    :cond_4
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 437
    :cond_5
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 441
    :cond_6
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 443
    :cond_7
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 446
    :cond_8
    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_9
    move v3, v4

    .line 447
    goto :goto_9

    .line 448
    :cond_a
    iget-object v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_a
.end method

.method public isDistinct()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    return v0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    return v0
.end method

.method public setModelComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelComment"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setModelTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelTag"    # Ljava/lang/String;

    .prologue
    .line 478
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setModelVersion(I)V
    .locals 0
    .param p1, "modelVersion"    # I

    .prologue
    .line 483
    iput p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    .line 484
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 498
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 500
    .local v0, "payload":Lorg/json/JSONObject;
    iget v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    packed-switch v1, :pswitch_data_0

    .line 520
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempted to create JSON representation of an unknown query type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :pswitch_0
    const-string v1, "distinct"

    iget-boolean v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 503
    const-string v1, "groupBy"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v1, "having"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v1, "limit"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "projectionIn"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    .line 507
    const-string v1, "selection"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v1, "selectionArgs"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    .line 509
    const-string v1, "sortOrder"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v1, "strict"

    iget-boolean v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 511
    const-string v1, "tables"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_0
    const-string v1, "modelComment"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v1, "modelTag"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v1, "modelVersion"

    iget v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string v1, "queryType"

    iget v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 514
    :pswitch_1
    const-string v1, "rawSql"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v1, "selectionArgs"

    iget-object v2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Luk/co/alt236/easycursor/util/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot produce the JSON representation of a uninitialised model file!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EasyQueryModel [mQueryType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mQueryType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    iget v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mModelComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    const-string v1, ", mRawSql="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mRawSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDistinct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mDistinct:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    const-string v1, ", mStrict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mStrict:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTables="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mTables:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    const-string v1, ", mProjectionIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mProjectionIn:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const-string v1, ", mSelectionArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    const-string v1, ", mSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGroupBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mGroupBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 541
    const-string v1, ", mHaving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mHaving:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSortOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    const-string v1, ", mLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->mLimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
