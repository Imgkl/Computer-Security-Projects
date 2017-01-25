.class public interface abstract Lcom/genie_connect/common/db/model/InAppAction$InAppActionSyncableFields;
.super Ljava/lang/Object;
.source "InAppAction.java"

# interfaces
.implements Lcom/genie_connect/common/db/entityfactory/EGFields$SyncableEntityFieldsLongKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/InAppAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InAppActionSyncableFields"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ENDDATE:Ljava/lang/String; = "endDate"

.field public static final HTTPREQUESTBACKGROUND:Ljava/lang/String; = "httpRequestBackground"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTPREQUESTBODY:Ljava/lang/String; = "httpRequestBody"

.field public static final HTTPREQUESTMETHOD:Ljava/lang/String; = "httpRequestMethod"

.field public static final HTTPREQUESTRETRY:Ljava/lang/String; = "httpRequestRetry"

.field public static final HTTPREQUESTURL:Ljava/lang/String; = "httpRequestUrl"

.field public static final INTENTENTITYKEY:Ljava/lang/String; = "intentEntityKey"

.field public static final INTENTENTITYKIND:Ljava/lang/String; = "intentEntityKind"

.field public static final INTENTURI:Ljava/lang/String; = "intentUri"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PLATFORMS:Ljava/lang/String; = "platforms"

.field public static final REPEAT:Ljava/lang/String; = "repeat"

.field public static final STARTDATE:Ljava/lang/String; = "startDate"
