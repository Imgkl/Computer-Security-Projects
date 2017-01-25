.class Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;
.super Ljava/lang/Object;
.source "GridFilenameUtils.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/io/GridFilenameUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IOCase"
.end annotation


# static fields
.field public static final INSENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

.field public static final SENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

.field public static final SYSTEM:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

.field private static final serialVersionUID:J = -0x580776bc651386cfL


# instance fields
.field private final name:Ljava/lang/String;

.field private final transient sensitive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1350
    new-instance v2, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    const-string v3, "Sensitive"

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    .line 1355
    new-instance v2, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    const-string v3, "Insensitive"

    invoke-direct {v2, v3, v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->INSENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    .line 1369
    new-instance v2, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    const-string v3, "System"

    invoke-static {}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->isSystemWindows()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SYSTEM:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z

    .prologue
    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    iput-object p1, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->name:Ljava/lang/String;

    .line 1407
    iput-boolean p2, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->sensitive:Z

    .line 1408
    return-void
.end method

.method public static forName(Ljava/lang/String;)Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1389
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    .line 1394
    :goto_0
    return-object v0

    .line 1391
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->INSENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1392
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->INSENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    goto :goto_0

    .line 1393
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SYSTEM:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1394
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SYSTEM:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    goto :goto_0

    .line 1395
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IOCase name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->forName(Ljava/lang/String;)Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 1452
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1453
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_1
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->sensitive:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1501
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 1502
    .local v5, "endLen":I
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->sensitive:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 1469
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1470
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1471
    :cond_1
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->sensitive:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "strStartIndex"    # I
    .param p3, "search"    # Ljava/lang/String;

    .prologue
    .line 1521
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1522
    .local v0, "endIndex":I
    if-lt v0, p2, :cond_1

    .line 1523
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1524
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1528
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 1523
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1528
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "strStartIndex"    # I
    .param p3, "search"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1544
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->sensitive:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1486
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->sensitive:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .prologue
    .line 1436
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->sensitive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->name:Ljava/lang/String;

    return-object v0
.end method
