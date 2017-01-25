.class public final enum Lorg/apache/ignite/configuration/DeploymentMode;
.super Ljava/lang/Enum;
.source "DeploymentMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/configuration/DeploymentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/configuration/DeploymentMode;

.field public static final enum CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

.field public static final enum ISOLATED:Lorg/apache/ignite/configuration/DeploymentMode;

.field public static final enum PRIVATE:Lorg/apache/ignite/configuration/DeploymentMode;

.field public static final enum SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

.field private static final VALS:[Lorg/apache/ignite/configuration/DeploymentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lorg/apache/ignite/configuration/DeploymentMode;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/configuration/DeploymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->PRIVATE:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 110
    new-instance v0, Lorg/apache/ignite/configuration/DeploymentMode;

    const-string v1, "ISOLATED"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/configuration/DeploymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->ISOLATED:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 140
    new-instance v0, Lorg/apache/ignite/configuration/DeploymentMode;

    const-string v1, "SHARED"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/configuration/DeploymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 167
    new-instance v0, Lorg/apache/ignite/configuration/DeploymentMode;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/configuration/DeploymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/configuration/DeploymentMode;

    sget-object v1, Lorg/apache/ignite/configuration/DeploymentMode;->PRIVATE:Lorg/apache/ignite/configuration/DeploymentMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/configuration/DeploymentMode;->ISOLATED:Lorg/apache/ignite/configuration/DeploymentMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/configuration/DeploymentMode;->SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->$VALUES:[Lorg/apache/ignite/configuration/DeploymentMode;

    .line 170
    invoke-static {}, Lorg/apache/ignite/configuration/DeploymentMode;->values()[Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->VALS:[Lorg/apache/ignite/configuration/DeploymentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 179
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->VALS:[Lorg/apache/ignite/configuration/DeploymentMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->VALS:[Lorg/apache/ignite/configuration/DeploymentMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lorg/apache/ignite/configuration/DeploymentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->$VALUES:[Lorg/apache/ignite/configuration/DeploymentMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/configuration/DeploymentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method
