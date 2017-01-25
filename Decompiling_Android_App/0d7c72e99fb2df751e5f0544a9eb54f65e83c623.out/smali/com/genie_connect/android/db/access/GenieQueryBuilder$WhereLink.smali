.class public final enum Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;
.super Ljava/lang/Enum;
.source "GenieQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/access/GenieQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WhereLink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

.field public static final enum AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

.field public static final enum OR:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;


# instance fields
.field private final link:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 365
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v1, "AND"

    const-string v2, " AND "

    invoke-direct {v0, v1, v3, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    .line 366
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v1, "OR"

    const-string v2, " OR "

    invoke-direct {v0, v1, v4, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->OR:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    .line 364
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->OR:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->$VALUES:[Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "link"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 371
    iput-object p3, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->link:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 364
    const-class v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->$VALUES:[Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->link:Ljava/lang/String;

    return-object v0
.end method
