.class public final enum Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
.super Ljava/lang/Enum;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/help/DeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InternalAccessGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field public static final enum DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field public static final enum LOCKEDOUT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field public static final enum SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field public static final enum USER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;


# instance fields
.field final accessValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    new-instance v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    const-string v1, "LOCKEDOUT"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v3, v2}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->LOCKEDOUT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 337
    new-instance v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    const-string v1, "DEVELOPER"

    const v2, 0x7ffffffe

    invoke-direct {v0, v1, v4, v2}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 338
    new-instance v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    const-string v1, "SUPPORT"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v5, v2}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 339
    new-instance v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    const-string v1, "USER"

    invoke-direct {v0, v1, v6, v3}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->USER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 335
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sget-object v1, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->LOCKEDOUT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->USER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    aput-object v1, v0, v6

    sput-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->$VALUES:[Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 343
    iput p3, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->accessValue:I

    .line 344
    return-void
.end method

.method public static canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z
    .locals 2
    .param p0, "myGroup"    # Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .param p1, "targetGroup"    # Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->getAccessValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->getAccessValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 335
    const-class v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->$VALUES:[Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method


# virtual methods
.method public getAccessValue()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->accessValue:I

    return v0
.end method
