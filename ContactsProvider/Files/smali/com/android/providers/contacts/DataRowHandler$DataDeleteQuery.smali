.class public interface abstract Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final oe:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data._id"

    aput-object v1, v0, v2

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "is_primary"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->oe:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "is_primary"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
