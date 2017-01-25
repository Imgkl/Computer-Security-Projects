.class public final enum Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;
.super Ljava/lang/Enum;
.source "PermissionGroupAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

.field public static final enum ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

.field public static final enum ADD_TO_SCHEDULE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

.field public static final enum OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

.field public static final enum VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;


# instance fields
.field private final actionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8
    new-instance v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v5, v3}, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    .line 9
    new-instance v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v3, v4}, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    .line 10
    new-instance v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    const-string v1, "ADD_TO_SCHEDULE"

    invoke-direct {v0, v1, v4, v7}, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_SCHEDULE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    .line 11
    new-instance v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    const-string v1, "ADD_TO_FAVOURITE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    .line 3
    new-array v0, v7, [Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    sget-object v1, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_SCHEDULE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->$VALUES:[Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->actionCode:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->$VALUES:[Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    return-object v0
.end method


# virtual methods
.method public getActionCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->actionCode:I

    return v0
.end method
