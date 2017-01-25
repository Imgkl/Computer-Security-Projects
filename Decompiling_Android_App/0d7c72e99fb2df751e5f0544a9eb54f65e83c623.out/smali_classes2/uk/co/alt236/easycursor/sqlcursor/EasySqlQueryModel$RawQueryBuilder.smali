.class public Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;
.super Ljava/lang/Object;
.source "EasySqlQueryModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawQueryBuilder"
.end annotation


# instance fields
.field private modelComment:Ljava/lang/String;

.field private modelTag:Ljava/lang/String;

.field private modelVersion:I

.field private final queryType:I

.field private rawSql:Ljava/lang/String;

.field private selectionArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/4 v0, 0x2

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->queryType:I

    .line 547
    return-void
.end method

.method static synthetic access$0(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->modelComment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->modelTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->modelVersion:I

    return v0
.end method

.method static synthetic access$3(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->rawSql:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->selectionArgs:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    .locals 2

    .prologue
    .line 564
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;-><init>(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;)V

    return-object v0
.end method

.method public setModelComment(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->modelComment:Ljava/lang/String;

    .line 574
    return-object p0
.end method

.method public setModelTag(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 583
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->modelTag:Ljava/lang/String;

    .line 584
    return-object p0
.end method

.method public setModelVersion(I)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 594
    iput p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->modelVersion:I

    .line 595
    return-object p0
.end method

.method public setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 599
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->rawSql:Ljava/lang/String;

    .line 600
    return-object p0
.end method

.method public setSelectionArgs([Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 604
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->selectionArgs:[Ljava/lang/String;

    .line 605
    return-object p0
.end method
