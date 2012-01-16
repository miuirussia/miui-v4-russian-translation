.class interface abstract Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# static fields
.field public static final vN:[Ljava/lang/String;

.field public static final vO:[Ljava/lang/String;

.field public static final vP:[Ljava/lang/String;

.field public static final vQ:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) "

    aput-object v1, v0, v4

    const-string v1, "notes"

    aput-object v1, v0, v5

    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_organization"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_sync_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_sync_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->vN:[Ljava/lang/String;

    .line 347
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) "

    aput-object v1, v0, v4

    const-string v1, "notes"

    aput-object v1, v0, v5

    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_organization"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_sync_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_sync_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->vO:[Ljava/lang/String;

    .line 354
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "notes"

    aput-object v1, v0, v5

    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_organization"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_sync_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_sync_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->vP:[Ljava/lang/String;

    .line 361
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "notes"

    aput-object v1, v0, v5

    const-string v1, "times_contacted"

    aput-object v1, v0, v6

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_organization"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_sync_time"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_sync_local_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->vQ:[Ljava/lang/String;

    return-void
.end method
