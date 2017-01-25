.class public final enum Lcom/genie_connect/android/db/config/misc/Label;
.super Ljava/lang/Enum;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/config/misc/Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum AGENDA_CLASHING_SESSIONS_ALERT:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum AGENDA_SESSION_ADDED:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum AGENDA_SESSION_ADDED_WHITELIST:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum AGENDA_SESSION_REMOVED:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum AGENDA_SESSION_REMOVED_WHITELIST:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum ARRANGE_MEETING_FAILED:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum ARRANGE_MEETING_SUCCESS:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum ATTEND_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum AUTO_ACCEPT_MEETING_SUCCESS:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum BOOKMARK_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum CONTINUE_AS_GUEST:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum FAVOURITES_DISABLED:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum FAVOURITES_SECURED:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum FINDING_AVAILABILITY:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum FINDING_AVAILABILITY_FAILED:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum FORGOTTEN_PASSWORD:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum FORGOTTEN_PASSWORD_DISABLED_MESSAGE:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum NOT_ENOUGH_MEETING_CREDITS:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum NOT_ENOUGH_MESSAGE_CREDITS:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum PASSWORD:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum PLEASE_LOGIN:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum PLEASE_LOGIN_TITLE:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum PLEASE_REGISTER:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum PLEASE_REGISTER_TITLE:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum REMOVE_ATTEND_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum REMOVE_BOOKMARK_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

.field public static final enum USERNAME:Lcom/genie_connect/android/db/config/misc/Label;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "FORGOTTEN_PASSWORD_DISABLED_MESSAGE"

    const-string v2, "forgottenPasswordDisabledMessage"

    invoke-direct {v0, v1, v4, v2}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->FORGOTTEN_PASSWORD_DISABLED_MESSAGE:Lcom/genie_connect/android/db/config/misc/Label;

    .line 36
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "PLEASE_LOGIN"

    const-string v2, "pleaseLogIn"

    invoke-direct {v0, v1, v5, v2}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_LOGIN:Lcom/genie_connect/android/db/config/misc/Label;

    .line 37
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "PLEASE_LOGIN_TITLE"

    const-string v2, "pleaseLogInTitle"

    invoke-direct {v0, v1, v6, v2}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_LOGIN_TITLE:Lcom/genie_connect/android/db/config/misc/Label;

    .line 38
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "CONTINUE_AS_GUEST"

    const-string v2, "continueAsGuest"

    invoke-direct {v0, v1, v7, v2}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->CONTINUE_AS_GUEST:Lcom/genie_connect/android/db/config/misc/Label;

    .line 39
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "PLEASE_REGISTER"

    const-string v2, "pleaseRegister"

    invoke-direct {v0, v1, v8, v2}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_REGISTER:Lcom/genie_connect/android/db/config/misc/Label;

    .line 40
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "PLEASE_REGISTER_TITLE"

    const/4 v2, 0x5

    const-string v3, "pleaseRegisterTitle"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_REGISTER_TITLE:Lcom/genie_connect/android/db/config/misc/Label;

    .line 41
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "USERNAME"

    const/4 v2, 0x6

    const-string/jumbo v3, "username"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->USERNAME:Lcom/genie_connect/android/db/config/misc/Label;

    .line 42
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "PASSWORD"

    const/4 v2, 0x7

    const-string v3, "password"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->PASSWORD:Lcom/genie_connect/android/db/config/misc/Label;

    .line 43
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "FORGOTTEN_PASSWORD"

    const/16 v2, 0x8

    const-string v3, "forgottenPassword"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->FORGOTTEN_PASSWORD:Lcom/genie_connect/android/db/config/misc/Label;

    .line 46
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "FAVOURITES_DISABLED"

    const/16 v2, 0x9

    const-string v3, "favouritesDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->FAVOURITES_DISABLED:Lcom/genie_connect/android/db/config/misc/Label;

    .line 47
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "FAVOURITES_SECURED"

    const/16 v2, 0xa

    const-string v3, "favouritesSecured"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->FAVOURITES_SECURED:Lcom/genie_connect/android/db/config/misc/Label;

    .line 48
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "NO_FAVOURITES_AVAILABLE"

    const/16 v2, 0xb

    const-string v3, "noFavouritesAvailable"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    .line 50
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "BOOKMARK_SESSION"

    const/16 v2, 0xc

    const-string v3, "bookmarkSession"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->BOOKMARK_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    .line 51
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "REMOVE_BOOKMARK_SESSION"

    const/16 v2, 0xd

    const-string v3, "removeBookmarkSession"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->REMOVE_BOOKMARK_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    .line 52
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "ATTEND_SESSION"

    const/16 v2, 0xe

    const-string v3, "attendSession"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->ATTEND_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    .line 53
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "REMOVE_ATTEND_SESSION"

    const/16 v2, 0xf

    const-string v3, "removeAttendSession"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->REMOVE_ATTEND_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    .line 56
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "NOT_ENOUGH_MESSAGE_CREDITS"

    const/16 v2, 0x10

    const-string v3, "notEnoughMessageCredits"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->NOT_ENOUGH_MESSAGE_CREDITS:Lcom/genie_connect/android/db/config/misc/Label;

    .line 57
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "NOT_ENOUGH_MEETING_CREDITS"

    const/16 v2, 0x11

    const-string v3, "notEnoughMeetingCredits"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->NOT_ENOUGH_MEETING_CREDITS:Lcom/genie_connect/android/db/config/misc/Label;

    .line 58
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "FINDING_AVAILABILITY"

    const/16 v2, 0x12

    const-string v3, "findingAvailability"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->FINDING_AVAILABILITY:Lcom/genie_connect/android/db/config/misc/Label;

    .line 59
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "FINDING_AVAILABILITY_FAILED"

    const/16 v2, 0x13

    const-string v3, "findingAvailabilityFailed"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->FINDING_AVAILABILITY_FAILED:Lcom/genie_connect/android/db/config/misc/Label;

    .line 60
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "ARRANGE_MEETING_SUCCESS"

    const/16 v2, 0x14

    const-string v3, "arrangeMeetingSuccess"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->ARRANGE_MEETING_SUCCESS:Lcom/genie_connect/android/db/config/misc/Label;

    .line 61
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "AUTO_ACCEPT_MEETING_SUCCESS"

    const/16 v2, 0x15

    const-string v3, "autoacceptMeetingSuccess"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->AUTO_ACCEPT_MEETING_SUCCESS:Lcom/genie_connect/android/db/config/misc/Label;

    .line 62
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "ARRANGE_MEETING_FAILED"

    const/16 v2, 0x16

    const-string v3, "arrangeMeetingFailed"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->ARRANGE_MEETING_FAILED:Lcom/genie_connect/android/db/config/misc/Label;

    .line 65
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "AGENDA_SESSION_ADDED"

    const/16 v2, 0x17

    const-string v3, "sessionAdded"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_ADDED:Lcom/genie_connect/android/db/config/misc/Label;

    .line 66
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "AGENDA_SESSION_ADDED_WHITELIST"

    const/16 v2, 0x18

    const-string v3, "sessionAddedWL"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_ADDED_WHITELIST:Lcom/genie_connect/android/db/config/misc/Label;

    .line 67
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "AGENDA_SESSION_REMOVED"

    const/16 v2, 0x19

    const-string v3, "sessionRemoved"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_REMOVED:Lcom/genie_connect/android/db/config/misc/Label;

    .line 68
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "AGENDA_SESSION_REMOVED_WHITELIST"

    const/16 v2, 0x1a

    const-string v3, "sessionRemovedWL"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_REMOVED_WHITELIST:Lcom/genie_connect/android/db/config/misc/Label;

    .line 69
    new-instance v0, Lcom/genie_connect/android/db/config/misc/Label;

    const-string v1, "AGENDA_CLASHING_SESSIONS_ALERT"

    const/16 v2, 0x1b

    const-string v3, "clashingSessionsAlert"

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/config/misc/Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_CLASHING_SESSIONS_ALERT:Lcom/genie_connect/android/db/config/misc/Label;

    .line 33
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/genie_connect/android/db/config/misc/Label;

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Label;->FORGOTTEN_PASSWORD_DISABLED_MESSAGE:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_LOGIN:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_LOGIN_TITLE:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Label;->CONTINUE_AS_GUEST:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v1, v0, v7

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_REGISTER:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_REGISTER_TITLE:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->USERNAME:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->PASSWORD:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->FORGOTTEN_PASSWORD:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->FAVOURITES_DISABLED:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->FAVOURITES_SECURED:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->BOOKMARK_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->REMOVE_BOOKMARK_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->ATTEND_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->REMOVE_ATTEND_SESSION:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->NOT_ENOUGH_MESSAGE_CREDITS:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->NOT_ENOUGH_MEETING_CREDITS:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->FINDING_AVAILABILITY:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->FINDING_AVAILABILITY_FAILED:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->ARRANGE_MEETING_SUCCESS:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->AUTO_ACCEPT_MEETING_SUCCESS:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->ARRANGE_MEETING_FAILED:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_ADDED:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_ADDED_WHITELIST:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_REMOVED:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_REMOVED_WHITELIST:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_CLASHING_SESSIONS_ALERT:Lcom/genie_connect/android/db/config/misc/Label;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/config/misc/Label;->$VALUES:[Lcom/genie_connect/android/db/config/misc/Label;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/genie_connect/android/db/config/misc/Label;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/config/misc/Label;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/genie_connect/android/db/config/misc/Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/misc/Label;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/config/misc/Label;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Label;->$VALUES:[Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/config/misc/Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/config/misc/Label;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/Label;->stringValue:Ljava/lang/String;

    return-object v0
.end method
