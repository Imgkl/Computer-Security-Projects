.class public Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
.super Ljava/lang/Object;
.source "EasyCompatSqlModelBuilder.java"


# instance fields
.field private mDistinct:Z

.field private mGroupBy:Ljava/lang/String;

.field private mHaving:Ljava/lang/String;

.field private mLimit:Ljava/lang/String;

.field private mProjectionIn:[Ljava/lang/String;

.field private mQueryType:I

.field private mRawSql:Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mStrict:Z

.field private mTables:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mQueryType:I

    .line 6
    return-void
.end method


# virtual methods
.method public build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    invoke-direct {v0, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;-><init>(Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;)V

    return-object v0
.end method

.method public getGroupBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mGroupBy:Ljava/lang/String;

    return-object v0
.end method

.method public getHaving()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mHaving:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectionIn()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mProjectionIn:[Ljava/lang/String;

    return-object v0
.end method

.method public getQueryType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mQueryType:I

    return v0
.end method

.method public getRawSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mRawSql:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mTables:Ljava/lang/String;

    return-object v0
.end method

.method public isDistinct()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mDistinct:Z

    return v0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mStrict:Z

    return v0
.end method

.method public setDistinct(Z)V
    .locals 0
    .param p1, "distinct"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mDistinct:Z

    .line 153
    return-void
.end method

.method public setQueryParams(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "rawSql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 167
    iget v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mQueryType:I

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A Model file\'s query parameters can only be set once!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mQueryType:I

    .line 172
    iput-object p2, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mSelectionArgs:[Ljava/lang/String;

    .line 173
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mRawSql:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;

    .prologue
    .line 262
    iget v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mQueryType:I

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A Model file\'s query parameters can only be set once!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mQueryType:I

    .line 268
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mProjectionIn:[Ljava/lang/String;

    .line 269
    iput-object p2, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mSelection:Ljava/lang/String;

    .line 270
    iput-object p3, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mSelectionArgs:[Ljava/lang/String;

    .line 271
    iput-object p4, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mGroupBy:Ljava/lang/String;

    .line 272
    iput-object p5, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mHaving:Ljava/lang/String;

    .line 273
    iput-object p6, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mSortOrder:Ljava/lang/String;

    .line 274
    iput-object p7, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mLimit:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setStrict(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mStrict:Z

    .line 302
    return-void
.end method

.method public setTables(Ljava/lang/String;)V
    .locals 0
    .param p1, "inTables"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->mTables:Ljava/lang/String;

    .line 314
    return-void
.end method
