.class public final enum Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
.super Ljava/lang/Enum;
.source "Udm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/access/Udm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FavouriteResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/access/Udm$FavouriteResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

.field public static final enum COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

.field public static final enum ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

.field public static final enum UNECESSARY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 640
    new-instance v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    const-string v1, "COMPLETED_SUCCESFULLY"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    .line 641
    new-instance v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    const-string v1, "UNECESSARY"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->UNECESSARY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    .line 642
    new-instance v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    .line 639
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->UNECESSARY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->$VALUES:[Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

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
    .line 639
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 639
    const-class v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .locals 1

    .prologue
    .line 639
    sget-object v0, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->$VALUES:[Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    return-object v0
.end method
