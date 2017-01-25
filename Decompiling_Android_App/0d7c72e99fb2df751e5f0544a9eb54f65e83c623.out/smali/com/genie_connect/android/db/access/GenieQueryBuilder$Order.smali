.class public final enum Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;
.super Ljava/lang/Enum;
.source "GenieQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/access/GenieQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

.field public static final enum ASC:Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

.field public static final enum DESC:Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;


# instance fields
.field private final order:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    const-string v1, "ASC"

    const-string v2, "ASC"

    invoke-direct {v0, v1, v3, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->ASC:Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    .line 350
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    const-string v1, "DESC"

    const-string v2, "DESC"

    invoke-direct {v0, v1, v4, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->DESC:Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    .line 348
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->ASC:Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->DESC:Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->$VALUES:[Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 355
    iput-object p3, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->order:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    const-class v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->$VALUES:[Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/genie_connect/android/db/access/GenieQueryBuilder$Order;->order:Ljava/lang/String;

    return-object v0
.end method
