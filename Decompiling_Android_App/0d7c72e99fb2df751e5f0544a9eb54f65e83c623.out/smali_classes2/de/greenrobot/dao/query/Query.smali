.class public Lde/greenrobot/dao/query/Query;
.super Lde/greenrobot/dao/query/AbstractQuery;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/dao/query/Query$1;,
        Lde/greenrobot/dao/query/Query$QueryData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lde/greenrobot/dao/query/AbstractQuery",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final limitPosition:I

.field private final offsetPosition:I

.field private final queryData:Lde/greenrobot/dao/query/Query$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/query/Query$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lde/greenrobot/dao/query/Query$QueryData;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .param p5, "limitPosition"    # I
    .param p6, "offsetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/Query$QueryData",
            "<TT;>;",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    .local p1, "queryData":Lde/greenrobot/dao/query/Query$QueryData;, "Lde/greenrobot/dao/query/Query$QueryData<TT;>;"
    .local p2, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT;*>;"
    invoke-direct {p0, p2, p3, p4}, Lde/greenrobot/dao/query/AbstractQuery;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lde/greenrobot/dao/query/Query;->queryData:Lde/greenrobot/dao/query/Query$QueryData;

    .line 77
    iput p5, p0, Lde/greenrobot/dao/query/Query;->limitPosition:I

    .line 78
    iput p6, p0, Lde/greenrobot/dao/query/Query;->offsetPosition:I

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lde/greenrobot/dao/query/Query$QueryData;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILde/greenrobot/dao/query/Query$1;)V
    .locals 0
    .param p1, "x0"    # Lde/greenrobot/dao/query/Query$QueryData;
    .param p2, "x1"    # Lde/greenrobot/dao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lde/greenrobot/dao/query/Query$1;

    .prologue
    .line 39
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-direct/range {p0 .. p6}, Lde/greenrobot/dao/query/Query;-><init>(Lde/greenrobot/dao/query/Query$QueryData;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lde/greenrobot/dao/query/Query;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;
    .param p3, "limitPosition"    # I
    .param p4, "offsetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "II)",
            "Lde/greenrobot/dao/query/Query",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lde/greenrobot/dao/query/Query$QueryData;

    invoke-static {p2}, Lde/greenrobot/dao/query/Query;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/query/Query$QueryData;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 66
    .local v0, "queryData":Lde/greenrobot/dao/query/Query$QueryData;, "Lde/greenrobot/dao/query/Query$QueryData<TT2;>;"
    invoke-virtual {v0}, Lde/greenrobot/dao/query/Query$QueryData;->forCurrentThread()Lde/greenrobot/dao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/query/Query;

    return-object v1
.end method

.method private getValueFromCursor(Landroid/database/Cursor;ILde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "fieldType"    # Lde/greenrobot/dao/query/FieldType;

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    const/4 v0, 0x1

    .line 407
    sget-object v1, Lde/greenrobot/dao/query/Query$1;->$SwitchMap$de$greenrobot$dao$query$FieldType:[I

    invoke-virtual {p3}, Lde/greenrobot/dao/query/FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 422
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 409
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_0

    .line 411
    :pswitch_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 413
    :pswitch_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 415
    :pswitch_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 417
    :pswitch_4
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 419
    :pswitch_5
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static internalCreate(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lde/greenrobot/dao/query/Query;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lde/greenrobot/dao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lde/greenrobot/dao/query/Query",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .local p0, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    const/4 v0, -0x1

    .line 59
    invoke-static {p0, p1, p2, v0, v0}, Lde/greenrobot/dao/query/Query;->create(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lde/greenrobot/dao/query/Query;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cursor()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 427
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 428
    iget-object v0, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public forCurrentThread()Lde/greenrobot/dao/query/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    iget-object v0, p0, Lde/greenrobot/dao/query/Query;->queryData:Lde/greenrobot/dao/query/Query$QueryData;

    invoke-virtual {v0, p0}, Lde/greenrobot/dao/query/Query$QueryData;->forCurrentThread(Lde/greenrobot/dao/query/AbstractQuery;)Lde/greenrobot/dao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/query/Query;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 122
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 123
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    invoke-virtual {v1, v0}, Lde/greenrobot/dao/InternalQueryDaoAccess;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public listIterator()Lde/greenrobot/dao/query/CloseableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/CloseableListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->listLazyUncached()Lde/greenrobot/dao/query/LazyList;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/LazyList;->listIteratorAutoClose()Lde/greenrobot/dao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listLazy()Lde/greenrobot/dao/query/LazyList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 438
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 439
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lde/greenrobot/dao/query/LazyList;

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lde/greenrobot/dao/query/LazyList;-><init>(Lde/greenrobot/dao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public listLazyUncached()Lde/greenrobot/dao/query/LazyList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 448
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 449
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lde/greenrobot/dao/query/LazyList;

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lde/greenrobot/dao/query/LazyList;-><init>(Lde/greenrobot/dao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public listOfField(Lde/greenrobot/dao/Property;Lde/greenrobot/dao/query/FieldType;)Ljava/util/List;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "fieldType"    # Lde/greenrobot/dao/query/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            "Lde/greenrobot/dao/query/FieldType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    iget-object v0, p1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lde/greenrobot/dao/query/Query;->listOfField(Ljava/lang/String;Lde/greenrobot/dao/query/FieldType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfField(Ljava/lang/String;Lde/greenrobot/dao/query/FieldType;)Ljava/util/List;
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Lde/greenrobot/dao/query/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lde/greenrobot/dao/query/FieldType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    const/4 v6, -0x1

    .line 384
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 385
    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v3}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v5, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 387
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v2, "toReturn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 390
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 392
    .local v0, "columnIndex":I
    if-ne v0, v6, :cond_0

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 396
    :cond_0
    if-eq v0, v6, :cond_1

    .line 397
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    invoke-direct {p0, v1, v0, p2}, Lde/greenrobot/dao/query/Query;->getValueFromCursor(Landroid/database/Cursor;ILde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    .end local v0    # "columnIndex":I
    :cond_1
    return-object v2
.end method

.method public listOfFieldAsBoolean(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    iget-object v0, p1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/Query;->listOfFieldAsBoolean(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsBoolean(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v4, Lde/greenrobot/dao/query/FieldType;->Boolean:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v4}, Lde/greenrobot/dao/query/Query;->listOfField(Ljava/lang/String;Lde/greenrobot/dao/query/FieldType;)Ljava/util/List;

    move-result-object v3

    .line 285
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "typedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 288
    .local v2, "value":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_0
    return-object v1
.end method

.method public listOfFieldAsByteArray(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    iget-object v0, p1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/Query;->listOfFieldAsByteArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsByteArray(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v4, Lde/greenrobot/dao/query/FieldType;->ByteArray:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v4}, Lde/greenrobot/dao/query/Query;->listOfField(Ljava/lang/String;Lde/greenrobot/dao/query/FieldType;)Ljava/util/List;

    move-result-object v3

    .line 257
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "typedValues":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Byte;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, "value":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/Byte;

    .end local v2    # "value":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/Byte;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_0
    return-object v1
.end method

.method public listOfFieldAsDouble(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    iget-object v0, p1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/Query;->listOfFieldAsDouble(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsDouble(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v4, Lde/greenrobot/dao/query/FieldType;->Double:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v4}, Lde/greenrobot/dao/query/Query;->listOfField(Ljava/lang/String;Lde/greenrobot/dao/query/FieldType;)Ljava/util/List;

    move-result-object v3

    .line 173
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "typedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 176
    .local v2, "value":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Double;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    return-object v1
.end method

.method public listOfFieldAsInt(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    iget-object v0, p1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/Query;->listOfFieldAsInt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsInt(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v4, Lde/greenrobot/dao/query/FieldType;->Int:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v4}, Lde/greenrobot/dao/query/Query;->listOfField(Ljava/lang/String;Lde/greenrobot/dao/query/FieldType;)Ljava/util/List;

    move-result-object v3

    .line 201
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "typedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 204
    .local v2, "value":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    return-object v1
.end method

.method public listOfFieldAsLong(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    iget-object v0, p1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/Query;->listOfFieldAsLong(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsLong(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v4, Lde/greenrobot/dao/query/FieldType;->Long:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v4}, Lde/greenrobot/dao/query/Query;->listOfField(Ljava/lang/String;Lde/greenrobot/dao/query/FieldType;)Ljava/util/List;

    move-result-object v3

    .line 229
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, "typedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 232
    .local v2, "value":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_0
    return-object v1
.end method

.method public listOfFieldAsString(Lde/greenrobot/dao/Property;)Ljava/util/List;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    iget-object v0, p1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/greenrobot/dao/query/Query;->listOfFieldAsString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOfFieldAsString(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v4, Lde/greenrobot/dao/query/FieldType;->String:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v4}, Lde/greenrobot/dao/query/Query;->listOfField(Ljava/lang/String;Lde/greenrobot/dao/query/FieldType;)Ljava/util/List;

    move-result-object v3

    .line 145
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v1, "typedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, "value":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_0
    return-object v1
.end method

.method public setLimit(I)V
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .line 100
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 101
    iget v0, p0, Lde/greenrobot/dao/query/Query;->limitPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Limit must be set with QueryBuilder before it can be used here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    iget v1, p0, Lde/greenrobot/dao/query/Query;->limitPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    return-void
.end method

.method public setOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 112
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 113
    iget v0, p0, Lde/greenrobot/dao/query/Query;->offsetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Offset must be set with QueryBuilder before it can be used here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    iget v1, p0, Lde/greenrobot/dao/query/Query;->offsetPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 117
    return-void
.end method

.method public setParameter(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 89
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    if-ltz p1, :cond_1

    iget v0, p0, Lde/greenrobot/dao/query/Query;->limitPosition:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lde/greenrobot/dao/query/Query;->offsetPosition:I

    if-ne p1, v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal parameter index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    invoke-super {p0, p1, p2}, Lde/greenrobot/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method public unique()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 469
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v1}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 470
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lde/greenrobot/dao/query/Query;->daoAccess:Lde/greenrobot/dao/InternalQueryDaoAccess;

    invoke-virtual {v1, v0}, Lde/greenrobot/dao/InternalQueryDaoAccess;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public uniqueField(Lde/greenrobot/dao/Property;Lde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;
    .locals 5
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "fieldType"    # Lde/greenrobot/dao/query/FieldType;

    .prologue
    .line 355
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->checkThread()V

    .line 356
    iget-object v2, p0, Lde/greenrobot/dao/query/Query;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v2}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lde/greenrobot/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v4, p0, Lde/greenrobot/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 358
    .local v1, "cursor":Landroid/database/Cursor;
    iget-object v2, p1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, "columnIndex":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-direct {p0, v1, v0, p2}, Lde/greenrobot/dao/query/Query;->getValueFromCursor(Landroid/database/Cursor;ILde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;

    move-result-object v2

    .line 364
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public uniqueFieldAsBoolean(Lde/greenrobot/dao/Property;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 345
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v0, Lde/greenrobot/dao/query/FieldType;->Boolean:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/query/Query;->uniqueField(Lde/greenrobot/dao/Property;Lde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public uniqueFieldAsByteArray(Lde/greenrobot/dao/Property;)[Ljava/lang/Byte;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 336
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v0, Lde/greenrobot/dao/query/FieldType;->ByteArray:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/query/Query;->uniqueField(Lde/greenrobot/dao/Property;Lde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Byte;

    check-cast v0, [Ljava/lang/Byte;

    return-object v0
.end method

.method public uniqueFieldAsDouble(Lde/greenrobot/dao/Property;)Ljava/lang/Double;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 318
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v0, Lde/greenrobot/dao/query/FieldType;->Double:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/query/Query;->uniqueField(Lde/greenrobot/dao/Property;Lde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public uniqueFieldAsInt(Lde/greenrobot/dao/Property;)Ljava/lang/Integer;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 309
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v0, Lde/greenrobot/dao/query/FieldType;->Int:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/query/Query;->uniqueField(Lde/greenrobot/dao/Property;Lde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public uniqueFieldAsLong(Lde/greenrobot/dao/Property;)Ljava/lang/Long;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 327
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v0, Lde/greenrobot/dao/query/FieldType;->Long:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/query/Query;->uniqueField(Lde/greenrobot/dao/Property;Lde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public uniqueFieldAsString(Lde/greenrobot/dao/Property;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 300
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    sget-object v0, Lde/greenrobot/dao/query/FieldType;->String:Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/dao/query/Query;->uniqueField(Lde/greenrobot/dao/Property;Lde/greenrobot/dao/query/FieldType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lde/greenrobot/dao/query/Query;, "Lde/greenrobot/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    .line 483
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 484
    new-instance v1, Lde/greenrobot/dao/DaoException;

    const-string v2, "No entity found for query"

    invoke-direct {v1, v2}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_0
    return-object v0
.end method
