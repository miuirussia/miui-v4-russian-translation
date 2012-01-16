.class interface abstract Lcom/android/providers/contacts/T9SearchSupport$T9LookupTable;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 912
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "normalized_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "t9_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "display_string"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "key_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport$T9LookupTable;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
