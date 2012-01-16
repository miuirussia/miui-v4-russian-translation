.class public interface abstract Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
