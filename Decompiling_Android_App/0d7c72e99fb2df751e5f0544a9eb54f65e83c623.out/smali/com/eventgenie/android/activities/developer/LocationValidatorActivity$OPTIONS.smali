.class public final enum Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;
.super Ljava/lang/Enum;
.source "LocationValidatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OPTIONS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

.field public static final enum ALL_EXHIBITORS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

.field public static final enum ALL_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

.field public static final enum ALL_INVALID_LOCATIONS_WITH_ATTACHED_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

.field public static final enum ALL_SESSIONS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

.field public static final enum ALL_VALID_BOOTHS_WITH_NO_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;


# instance fields
.field private final mOption:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    const-string v1, "ALL_INVALID_LOCATIONS"

    const-string v2, "All invalid locations"

    invoke-direct {v0, v1, v3, v2}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    .line 75
    new-instance v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    const-string v1, "ALL_INVALID_LOCATIONS_WITH_ATTACHED_EXHIBITOR"

    const-string v2, "All invalid locations that have exhibitors attached"

    invoke-direct {v0, v1, v4, v2}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_INVALID_LOCATIONS_WITH_ATTACHED_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    .line 76
    new-instance v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    const-string v1, "ALL_EXHIBITORS_WITH_INVALID_LOCATIONS"

    const-string v2, "All exhibitors with at least one invalid location"

    invoke-direct {v0, v1, v5, v2}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_EXHIBITORS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    .line 77
    new-instance v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    const-string v1, "ALL_SESSIONS_WITH_INVALID_LOCATIONS"

    const-string v2, "All sessions with at least one invalid location"

    invoke-direct {v0, v1, v6, v2}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_SESSIONS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    .line 78
    new-instance v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    const-string v1, "ALL_VALID_BOOTHS_WITH_NO_EXHIBITOR"

    const-string v2, "All valid booths with no linked exhibitor"

    invoke-direct {v0, v1, v7, v2}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_VALID_BOOTHS_WITH_NO_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_INVALID_LOCATIONS_WITH_ATTACHED_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_EXHIBITORS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_SESSIONS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_VALID_BOOTHS_WITH_NO_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    aput-object v1, v0, v7

    sput-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->$VALUES:[Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->mOption:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->$VALUES:[Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v0}, [Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->mOption:Ljava/lang/String;

    return-object v0
.end method
