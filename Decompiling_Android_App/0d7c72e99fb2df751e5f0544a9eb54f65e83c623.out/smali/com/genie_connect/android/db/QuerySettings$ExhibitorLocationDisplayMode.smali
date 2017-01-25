.class public final enum Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
.super Ljava/lang/Enum;
.source "QuerySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/QuerySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExhibitorLocationDisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

.field public static final enum ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

.field public static final enum NoLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

.field public static final enum SingleLineLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    const-string v1, "NoLocation"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->NoLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    .line 42
    new-instance v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    const-string v1, "SingleLineLocation"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->SingleLineLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    .line 43
    new-instance v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    const-string v1, "ExpandedLocation"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    sget-object v1, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->NoLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->SingleLineLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->$VALUES:[Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->$VALUES:[Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    return-object v0
.end method
