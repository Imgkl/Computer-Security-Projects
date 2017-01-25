.class public Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
.super Ljava/lang/Object;
.source "EasySqlQueryModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectQueryBuilder"
.end annotation


# instance fields
.field private distinct:Z

.field private groupBy:Ljava/lang/String;

.field private having:Ljava/lang/String;

.field private limit:Ljava/lang/String;

.field private modelComment:Ljava/lang/String;

.field private modelTag:Ljava/lang/String;

.field private modelVersion:I

.field private projectionIn:[Ljava/lang/String;

.field private final queryType:I

.field private selection:Ljava/lang/String;

.field private selectionArgs:[Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;

.field private strict:Z

.field private tables:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    const/4 v0, 0x1

    iput v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->queryType:I

    .line 611
    return-void
.end method

.method static synthetic access$0(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->distinct:Z

    return v0
.end method

.method static synthetic access$1(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->groupBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->strict:Z

    return v0
.end method

.method static synthetic access$12(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->tables:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->having:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->limit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->modelComment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->modelTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->modelVersion:I

    return v0
.end method

.method static synthetic access$7(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->projectionIn:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->selection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->selectionArgs:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;-><init>(Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;)V

    return-object v0
.end method

.method public setDistinct(Z)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "distinct"    # Z

    .prologue
    .line 644
    iput-boolean p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->distinct:Z

    .line 645
    return-object p0
.end method

.method public setGroupBy(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "groupBy"    # Ljava/lang/String;

    .prologue
    .line 649
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->groupBy:Ljava/lang/String;

    .line 650
    return-object p0
.end method

.method public setHaving(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "having"    # Ljava/lang/String;

    .prologue
    .line 654
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->having:Ljava/lang/String;

    .line 655
    return-object p0
.end method

.method public setLimit(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "limit"    # Ljava/lang/String;

    .prologue
    .line 659
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->limit:Ljava/lang/String;

    .line 660
    return-object p0
.end method

.method public setModelComment(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 669
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->modelComment:Ljava/lang/String;

    .line 670
    return-object p0
.end method

.method public setModelTag(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 679
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->modelTag:Ljava/lang/String;

    .line 680
    return-object p0
.end method

.method public setModelVersion(I)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 690
    iput p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->modelVersion:I

    .line 691
    return-object p0
.end method

.method public setSelect([Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "projectionIn"    # [Ljava/lang/String;

    .prologue
    .line 695
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->projectionIn:[Ljava/lang/String;

    .line 696
    return-object p0
.end method

.method public setSortOrder(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 710
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->sortOrder:Ljava/lang/String;

    .line 711
    return-object p0
.end method

.method public setStrict(Z)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "strict"    # Z

    .prologue
    .line 738
    iput-boolean p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->strict:Z

    .line 739
    return-object p0
.end method

.method public setTables(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "tables"    # Ljava/lang/String;

    .prologue
    .line 751
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->tables:Ljava/lang/String;

    .line 752
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 700
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->selection:Ljava/lang/String;

    .line 701
    return-object p0
.end method

.method public setWhereArgs([Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 705
    iput-object p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$SelectQueryBuilder;->selectionArgs:[Ljava/lang/String;

    .line 706
    return-object p0
.end method
