.class public final Lcom/a_vcard/android/provider/Contacts$Phones;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Lcom/a_vcard/android/provider/BaseColumns;
.implements Lcom/a_vcard/android/provider/Contacts$PhonesColumns;
.implements Lcom/a_vcard/android/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a_vcard/android/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phones"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "phones"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "number ASC"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
