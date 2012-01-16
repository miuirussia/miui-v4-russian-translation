.class public interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# static fields
.field public static final gx:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 142
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "stream_items"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "stream_item_photos"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_files"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "groups"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calls"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "directories"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;->gx:[Ljava/lang/String;

    return-void
.end method
