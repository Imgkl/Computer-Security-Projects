.class public final Lcom/a_vcard/android/provider/Contacts$ContactMethods;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Lcom/a_vcard/android/provider/BaseColumns;
.implements Lcom/a_vcard/android/provider/Contacts$ContactMethodsColumns;
.implements Lcom/a_vcard/android/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a_vcard/android/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactMethods"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "contact_methods"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "data ASC"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
