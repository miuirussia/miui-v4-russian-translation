.class interface abstract Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;
.super Ljava/lang/Object;
.source "DataRowHandlerForGroupMembership.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
