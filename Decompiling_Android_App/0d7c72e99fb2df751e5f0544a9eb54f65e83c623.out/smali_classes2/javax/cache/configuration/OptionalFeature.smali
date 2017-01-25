.class public final enum Ljavax/cache/configuration/OptionalFeature;
.super Ljava/lang/Enum;
.source "OptionalFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/cache/configuration/OptionalFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/cache/configuration/OptionalFeature;

.field public static final enum STORE_BY_REFERENCE:Ljavax/cache/configuration/OptionalFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Ljavax/cache/configuration/OptionalFeature;

    const-string v1, "STORE_BY_REFERENCE"

    invoke-direct {v0, v1, v2}, Ljavax/cache/configuration/OptionalFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/cache/configuration/OptionalFeature;->STORE_BY_REFERENCE:Ljavax/cache/configuration/OptionalFeature;

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/cache/configuration/OptionalFeature;

    sget-object v1, Ljavax/cache/configuration/OptionalFeature;->STORE_BY_REFERENCE:Ljavax/cache/configuration/OptionalFeature;

    aput-object v1, v0, v2

    sput-object v0, Ljavax/cache/configuration/OptionalFeature;->$VALUES:[Ljavax/cache/configuration/OptionalFeature;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/cache/configuration/OptionalFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Ljavax/cache/configuration/OptionalFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/cache/configuration/OptionalFeature;

    return-object v0
.end method

.method public static values()[Ljavax/cache/configuration/OptionalFeature;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Ljavax/cache/configuration/OptionalFeature;->$VALUES:[Ljavax/cache/configuration/OptionalFeature;

    invoke-virtual {v0}, [Ljavax/cache/configuration/OptionalFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/cache/configuration/OptionalFeature;

    return-object v0
.end method
