.class public Lcom/android/providers/contacts/ContactsProvider2;
.super Lcom/android/providers/contacts/AbstractContactsProvider;
.source "ContactsProvider2.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field private static final kc:Z

.field private static final rY:[Ljava/lang/String;

.field private static final tA:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tB:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tC:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tD:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tE:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tF:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tG:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tH:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tI:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tJ:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tK:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tL:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tM:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tN:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tO:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tP:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tQ:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tR:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tS:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tT:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tU:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tV:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tW:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tX:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tY:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tZ:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

.field private static final to:Ljava/util/Map;

.field private static final tp:Ljava/util/List;

.field private static final tq:[Ljava/lang/String;

.field private static final tr:[Ljava/lang/String;

.field private static final ts:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tt:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tu:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tv:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tw:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tx:Lcom/android/providers/contacts/ProjectionMap;

.field private static final ty:Lcom/android/providers/contacts/ProjectionMap;

.field private static final tz:Lcom/android/providers/contacts/ProjectionMap;

.field private static final ud:Ljava/util/Map;


# instance fields
.field private I:Lcom/android/providers/contacts/CommonNicknameCache;

.field private dg:Lcom/android/providers/contacts/ContactAggregator;

.field private dh:[Ljava/lang/String;

.field private gH:Ljava/util/HashMap;

.field private iJ:J

.field private ir:Lcom/android/providers/contacts/NameLookupBuilder;

.field private is:Landroid/content/ContentValues;

.field private ix:Lcom/android/providers/contacts/NameSplitter;

.field private kH:Ljava/lang/StringBuilder;

.field private ky:[Ljava/lang/String;

.field private mAccount:Landroid/accounts/Account;

.field private final oo:Ljava/lang/ThreadLocal;

.field private rK:Lcom/android/providers/contacts/GlobalSearchSupport;

.field private sT:I

.field private sU:I

.field private uA:Ljava/security/SecureRandom;

.field private uB:Lcom/android/providers/contacts/LegacyApiSupport;

.field private uC:Lcom/android/providers/contacts/SearchIndexManager;

.field private uD:Ljava/util/HashMap;

.field private uE:I

.field private uF:Z

.field private volatile uG:Ljava/util/concurrent/CountDownLatch;

.field private volatile uH:Ljava/util/concurrent/CountDownLatch;

.field private uI:Z

.field private uJ:Z

.field private uK:Z

.field private uL:Z

.field private uM:Ljava/util/Locale;

.field private uN:I

.field private uO:Landroid/os/HandlerThread;

.field private uP:Landroid/os/Handler;

.field private uQ:J

.field private ua:Z

.field private ub:Z

.field private uc:Ljava/util/ArrayList;

.field private ue:Ljava/util/HashMap;

.field private uf:Z

.field private ug:Lcom/android/providers/contacts/ProfileProvider;

.field private uh:Lcom/android/providers/contacts/PostalSplitter;

.field private ui:Lcom/android/providers/contacts/ContactDirectoryManager;

.field private final uj:Ljava/lang/ThreadLocal;

.field private final uk:Ljava/lang/ThreadLocal;

.field private ul:Ljava/util/HashMap;

.field private um:Ljava/util/HashMap;

.field private final un:Ljava/lang/ThreadLocal;

.field private uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

.field private final uq:Ljava/lang/ThreadLocal;

.field private ur:Lcom/android/providers/contacts/ContactAggregator;

.field private final us:Ljava/lang/ThreadLocal;

.field private ut:Lcom/android/providers/contacts/PhotoStore;

.field private uu:Lcom/android/providers/contacts/PhotoStore;

.field private uv:Lcom/android/providers/contacts/TransactionContext;

.field private uw:Lcom/android/providers/contacts/TransactionContext;

.field private final ux:Ljava/lang/ThreadLocal;

.field private uy:J

.field private uz:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x5208

    const/16 v7, 0x7d7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    const-string v0, "ContactsProvider"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    .line 239
    new-instance v0, Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    .line 398
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    .line 400
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    const/16 v1, 0x7d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    const/16 v1, 0x1b58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "presence_data_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    const/16 v1, 0x5209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stream_item_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    const/16 v1, 0x520b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stream_item_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x3ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x7d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x5209

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x520a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x520b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x520c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tp:Ljava/util/List;

    .line 449
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "groups._id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tq:[Ljava/lang/String;

    .line 571
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v5

    const-string v1, "name_raw_contact_id"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_type_and_data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name_verified"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tr:[Ljava/lang/String;

    .line 585
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_source"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "in_visible_group"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "lookup"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name_style"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_file_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_thumb_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_phone_number"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "company"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->ts:Lcom/android/providers/contacts/ProjectionMap;

    .line 610
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_presence"

    const-string v2, "agg_presence.mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status"

    const-string v2, "contacts_status_updates.status"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_ts"

    const-string v2, "contacts_status_updates.status_ts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_res_package"

    const-string v2, "contacts_status_updates.status_res_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_label"

    const-string v2, "contacts_status_updates.status_label"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_icon"

    const-string v2, "contacts_status_updates.status_icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tt:Lcom/android/providers/contacts/ProjectionMap;

    .line 627
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "snippet"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tu:Lcom/android/providers/contacts/ProjectionMap;

    .line 631
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type_and_data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "dirty"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_verified"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tv:Lcom/android/providers/contacts/ProjectionMap;

    .line 642
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tw:Lcom/android/providers/contacts/ProjectionMap;

    .line 649
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data6"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data7"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data8"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data9"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data10"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data11"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data12"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data13"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data14"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data15"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_version"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_primary"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_super_primary"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tx:Lcom/android/providers/contacts/ProjectionMap;

    .line 677
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_presence"

    const-string v2, "agg_presence.mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status"

    const-string v2, "contacts_status_updates.status"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_ts"

    const-string v2, "contacts_status_updates.status_ts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_res_package"

    const-string v2, "contacts_status_updates.status_res_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_label"

    const-string v2, "contacts_status_updates.status_label"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_icon"

    const-string v2, "contacts_status_updates.status_icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->ty:Lcom/android/providers/contacts/ProjectionMap;

    .line 694
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mode"

    const-string v2, "presence.mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "chat_capability"

    const-string v2, "presence.chat_capability"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status"

    const-string v2, "status_updates.status"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_ts"

    const-string v2, "status_updates.status_ts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_res_package"

    const-string v2, "status_updates.status_res_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_label"

    const-string v2, "status_updates.status_label"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_icon"

    const-string v2, "status_updates.status_icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tz:Lcom/android/providers/contacts/ProjectionMap;

    .line 705
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_count"

    const-string v2, "COUNT(*)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tA:Lcom/android/providers/contacts/ProjectionMap;

    .line 710
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_phone_number"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->ts:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tt:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tB:Lcom/android/providers/contacts/ProjectionMap;

    .line 720
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tB:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tu:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tC:Lcom/android/providers/contacts/ProjectionMap;

    .line 726
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tB:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_used_sort"

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tD:Lcom/android/providers/contacts/ProjectionMap;

    .line 731
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tB:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_used_sort"

    const-string v2, "SUM(data_usage_stat.times_used)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tE:Lcom/android/providers/contacts/ProjectionMap;

    .line 741
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tB:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_used_sort"

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data3"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tF:Lcom/android/providers/contacts/ProjectionMap;

    .line 756
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tB:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_used_sort"

    const-string v2, "data_usage_stat.times_used"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_user_profile"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tG:Lcom/android/providers/contacts/ProjectionMap;

    .line 767
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_display_name"

    const-string v2, "display_name || \'.vcf\'"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_size"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tH:Lcom/android/providers/contacts/ProjectionMap;

    .line 774
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_source"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name_style"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "aggregation_mode"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tv:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tw:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tI:Lcom/android/providers/contacts/ProjectionMap;

    .line 797
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tv:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tw:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tx:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tJ:Lcom/android/providers/contacts/ProjectionMap;

    .line 810
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->ts:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->ty:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tv:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tw:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tx:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tz:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tK:Lcom/android/providers/contacts/ProjectionMap;

    .line 827
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "label"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "normalized_number"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tL:Lcom/android/providers/contacts/ProjectionMap;

    .line 835
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tx:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tz:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tv:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->ts:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->ty:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tM:Lcom/android/providers/contacts/ProjectionMap;

    .line 849
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tM:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tL:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tN:Lcom/android/providers/contacts/ProjectionMap;

    .line 855
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "MIN(_id)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tx:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tz:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->ts:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->ty:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tO:Lcom/android/providers/contacts/ProjectionMap;

    .line 866
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tO:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tL:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tP:Lcom/android/providers/contacts/ProjectionMap;

    .line 872
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "contacts_view._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "lookup"

    const-string v2, "contacts_view.lookup"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name"

    const-string v2, "contacts_view.display_name"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    const-string v2, "contacts_view.last_time_contacted"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted"

    const-string v2, "contacts_view.times_contacted"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    const-string v2, "contacts_view.starred"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "in_visible_group"

    const-string v2, "contacts_view.in_visible_group"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_id"

    const-string v2, "contacts_view.photo_id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_uri"

    const-string v2, "contacts_view.photo_uri"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_thumb_uri"

    const-string v2, "contacts_view.photo_thumb_uri"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    const-string v2, "contacts_view.custom_ringtone"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_phone_number"

    const-string v2, "contacts_view.has_phone_number"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    const-string v2, "contacts_view.send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "data2"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "label"

    const-string v2, "data3"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "normalized_number"

    const-string v2, "data4"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "company"

    const-string v2, "contacts_view.company"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tQ:Lcom/android/providers/contacts/ProjectionMap;

    .line 894
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type_and_data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "dirty"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "title_res"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_visible"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "system_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "should_sync"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "auto_add"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tR:Lcom/android/providers/contacts/ProjectionMap;

    .line 927
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tR:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_count"

    const-string v2, "ifnull(group_member_count, 0)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_phones"

    const-string v2, "(SELECT COUNT(contacts._id) FROM contacts INNER JOIN raw_contacts ON (raw_contacts.contact_id=contacts._id) INNER JOIN data ON (data.data1=groups._id AND data.raw_contact_id=raw_contacts._id AND data.mimetype_id=(SELECT _id FROM mimetypes WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\')) WHERE has_phone_number)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tS:Lcom/android/providers/contacts/ProjectionMap;

    .line 938
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tS:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->a(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_count_per_account"

    const-string v2, "(SELECT COUNT(*) FROM view_groups WHERE (account_name=groups.account_name AND account_type=groups.account_type AND deleted=0 AND favorites=0 AND auto_add=0) GROUP BY account_name, account_type)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tT:Lcom/android/providers/contacts/ProjectionMap;

    .line 958
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "agg_exceptions._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tU:Lcom/android/providers/contacts/ProjectionMap;

    .line 966
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "ungrouped_visible"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "should_sync"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "any_unsynced"

    const-string v2, "(CASE WHEN MIN(should_sync,(SELECT (CASE WHEN MIN(should_sync) IS NULL THEN 1 ELSE MIN(should_sync) END) FROM groups WHERE groups.account_name=settings.account_name AND groups.account_type=settings.account_type AND ((groups.data_set IS NULL AND settings.data_set IS NULL) OR (groups.data_set=settings.data_set))))=0 THEN 1 ELSE 0 END)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_count"

    const-string v2, "(SELECT COUNT(*) FROM (SELECT 1 FROM settings LEFT OUTER JOIN raw_contacts ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) GROUP BY settings.account_name,settings.account_type,contact_id HAVING COUNT(data.data1) == 0))"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_phones"

    const-string v2, "(SELECT COUNT(*) FROM (SELECT 1 FROM settings LEFT OUTER JOIN raw_contacts ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) WHERE has_phone_number GROUP BY settings.account_name,settings.account_type,contact_id HAVING COUNT(data.data1) == 0))"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tV:Lcom/android/providers/contacts/ProjectionMap;

    .line 1009
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "presence_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "presence_data_id"

    const-string v2, "data._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "im_account"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "im_handle"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "protocol"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_protocol"

    const-string v2, "(CASE WHEN custom_protocol=\'\' THEN NULL ELSE custom_protocol END)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "chat_capability"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_ts"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_icon"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_label"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tW:Lcom/android/providers/contacts/ProjectionMap;

    .line 1031
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_lookup"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_source_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tX:Lcom/android/providers/contacts/ProjectionMap;

    .line 1052
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "stream_item_photos._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_source_id"

    const-string v2, "raw_contacts.sourceid"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_index"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_file_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_uri"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'||\'/\'||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "photo_file_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "filesize"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_photo_sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_photo_sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_photo_sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_photo_sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tY:Lcom/android/providers/contacts/ProjectionMap;

    .line 1071
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->eZ()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "typeResourceId"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "authority"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "accountType"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "exportSupport"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "shortcutSupport"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photoSupport"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tZ:Lcom/android/providers/contacts/ProjectionMap;

    .line 1090
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->rY:[Ljava/lang/String;

    .line 1120
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    .line 1121
    const-string v1, "com.android.contacts"

    const-string v2, "contacts"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1122
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1123
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/data"

    const/16 v3, 0x3ec

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1124
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/entities"

    const/16 v3, 0x3fb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1125
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/suggestions"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1127
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/suggestions/*"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1129
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/photo"

    const/16 v3, 0x3f1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1130
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/display_photo"

    const/16 v3, 0x3f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1132
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/stream_items"

    const/16 v3, 0x3fe

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1134
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/filter"

    const/16 v3, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1135
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/filter/*"

    const/16 v3, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1136
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1137
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/data"

    const/16 v3, 0x3f9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1138
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/photo"

    const/16 v3, 0x3f2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1140
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    const/16 v3, 0x3eb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1141
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/data"

    const/16 v3, 0x3fa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1143
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/photo"

    const/16 v3, 0x3f3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1145
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/display_photo"

    const/16 v3, 0x3f5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1147
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/display_photo"

    const/16 v3, 0x3f6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1149
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/entities"

    const/16 v3, 0x3fc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1151
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/entities"

    const/16 v3, 0x3fd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1153
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/stream_items"

    const/16 v3, 0x3ff

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1155
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/stream_items"

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1157
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/as_vcard/*"

    const/16 v3, 0x3f7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1158
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/as_multi_vcard/*"

    const/16 v3, 0x3f8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1160
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/strequent/"

    const/16 v3, 0x3ee

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1161
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/strequent/filter/*"

    const/16 v3, 0x3ef

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1163
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/group/*"

    const/16 v3, 0x3f0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1164
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/frequent"

    const/16 v3, 0x401

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1166
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts"

    const/16 v3, 0x7d2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1167
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#"

    const/16 v3, 0x7d3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1168
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/data"

    const/16 v3, 0x7d4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1169
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/display_photo"

    const/16 v3, 0x7d6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1171
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/entity"

    const/16 v3, 0x7d5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1172
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/stream_items"

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1174
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/stream_items/#"

    const/16 v3, 0x7d8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1177
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contact_entities"

    const/16 v3, 0x3a99

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1179
    const-string v1, "com.android.contacts"

    const-string v2, "data"

    const/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1180
    const-string v1, "com.android.contacts"

    const-string v2, "data/#"

    const/16 v3, 0xbb9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1181
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones"

    const/16 v3, 0xbba

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1182
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/#"

    const/16 v3, 0xbbb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1183
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/filter"

    const/16 v3, 0xbbc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1184
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/filter/*"

    const/16 v3, 0xbbc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1185
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/group/#"

    const/16 v3, 0xbc9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1186
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails"

    const/16 v3, 0xbbd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1187
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/#"

    const/16 v3, 0xbbe

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1188
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/lookup"

    const/16 v3, 0xbbf

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1189
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/lookup/*"

    const/16 v3, 0xbbf

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1190
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/filter"

    const/16 v3, 0xbc0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1191
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/filter/*"

    const/16 v3, 0xbc0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1192
    const-string v1, "com.android.contacts"

    const-string v2, "data/postals"

    const/16 v3, 0xbc1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1193
    const-string v1, "com.android.contacts"

    const-string v2, "data/postals/#"

    const/16 v3, 0xbc2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1194
    const-string v1, "com.android.contacts"

    const-string v2, "data/nickname"

    const/16 v3, 0xbc7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1195
    const-string v1, "com.android.contacts"

    const-string v2, "data/nickname/#"

    const/16 v3, 0xbc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1197
    const-string v1, "com.android.contacts"

    const-string v2, "data/usagefeedback/*"

    const/16 v3, 0x4e21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1199
    const-string v1, "com.android.contacts"

    const-string v2, "groups"

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1200
    const-string v1, "com.android.contacts"

    const-string v2, "groups/#"

    const/16 v3, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1201
    const-string v1, "com.android.contacts"

    const-string v2, "groups_summary"

    const/16 v3, 0x2713

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1202
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/group_id/#"

    const/16 v3, 0x402

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1204
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/recent_contacts/"

    const/16 v3, 0x403

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1206
    const-string v1, "com.android.contacts"

    const-string v2, "syncstate"

    const/16 v3, 0x2af8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1207
    const-string v1, "com.android.contacts"

    const-string v2, "syncstate/#"

    const/16 v3, 0x2af9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1209
    const-string v1, "com.android.contacts"

    const-string v2, "profile/syncstate"

    const/16 v3, 0x2afa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1211
    const-string v1, "com.android.contacts"

    const-string v2, "profile/syncstate/#"

    const/16 v3, 0x2afb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1215
    const-string v1, "com.android.contacts"

    const-string v2, "phone_lookup/*"

    const/16 v3, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1216
    const-string v1, "com.android.contacts"

    const-string v2, "aggregation_exceptions"

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1218
    const-string v1, "com.android.contacts"

    const-string v2, "aggregation_exceptions/*"

    const/16 v3, 0x1771

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1221
    const-string v1, "com.android.contacts"

    const-string v2, "settings"

    const/16 v3, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1223
    const-string v1, "com.android.contacts"

    const-string v2, "status_updates"

    const/16 v3, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1224
    const-string v1, "com.android.contacts"

    const-string v2, "status_updates/#"

    const/16 v3, 0x1b59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1226
    const-string v1, "com.android.contacts"

    const-string v2, "search_suggest_query"

    const/16 v3, 0x2ee1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1228
    const-string v1, "com.android.contacts"

    const-string v2, "search_suggest_query/*"

    const/16 v3, 0x2ee1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1230
    const-string v1, "com.android.contacts"

    const-string v2, "search_suggest_shortcut/*"

    const/16 v3, 0x2ee2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1233
    const-string v1, "com.android.contacts"

    const-string v2, "search_t9"

    const/16 v3, 0x2ee3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1234
    const-string v1, "com.android.contacts"

    const-string v2, "search_t9/*"

    const/16 v3, 0x2ee3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1235
    const-string v1, "com.android.contacts"

    const-string v2, "rebuild_t9_index"

    const/16 v3, 0x2ee4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1237
    const-string v1, "com.android.contacts"

    const-string v2, "provider_status"

    const/16 v3, 0x3e81

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1239
    const-string v1, "com.android.contacts"

    const-string v2, "directories"

    const/16 v3, 0x4269

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1240
    const-string v1, "com.android.contacts"

    const-string v2, "directories/#"

    const/16 v3, 0x426a

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1242
    const-string v1, "com.android.contacts"

    const-string v2, "complete_name"

    const/16 v3, 0x4650

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1244
    const-string v1, "com.android.contacts"

    const-string v2, "profile"

    const/16 v3, 0x4a38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1245
    const-string v1, "com.android.contacts"

    const-string v2, "profile/entities"

    const/16 v3, 0x4a39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1246
    const-string v1, "com.android.contacts"

    const-string v2, "profile/data"

    const/16 v3, 0x4a3a

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1247
    const-string v1, "com.android.contacts"

    const-string v2, "profile/data/#"

    const/16 v3, 0x4a3b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1248
    const-string v1, "com.android.contacts"

    const-string v2, "profile/photo"

    const/16 v3, 0x4a43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1249
    const-string v1, "com.android.contacts"

    const-string v2, "profile/display_photo"

    const/16 v3, 0x4a44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1250
    const-string v1, "com.android.contacts"

    const-string v2, "profile/as_vcard"

    const/16 v3, 0x4a3c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1251
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contacts"

    const/16 v3, 0x4a3d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1252
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contacts/#"

    const/16 v3, 0x4a3e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1254
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contacts/#/data"

    const/16 v3, 0x4a3f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1256
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contacts/#/entity"

    const/16 v3, 0x4a40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1258
    const-string v1, "com.android.contacts"

    const-string v2, "profile/status_updates"

    const/16 v3, 0x4a41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1260
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contact_entities"

    const/16 v3, 0x4a42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1263
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items"

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1264
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items/photo"

    const/16 v3, 0x5209

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1265
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items/#"

    const/16 v3, 0x520a

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1266
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items/#/photo"

    const/16 v3, 0x520b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1267
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items/#/photo/#"

    const/16 v3, 0x520c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1269
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items_limit"

    const/16 v3, 0x520d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1271
    const-string v1, "com.android.contacts"

    const-string v2, "display_photo/#"

    const/16 v3, 0x55f0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1272
    const-string v1, "com.android.contacts"

    const-string v2, "photo_dimensions"

    const/16 v3, 0x55f1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1275
    const-string v1, "call"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string v1, "long_text"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    const-string v1, "short_text"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->ud:Ljava/util/Map;

    .line 1281
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;-><init>()V

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    .line 1106
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    .line 1107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ky:[Ljava/lang/String;

    .line 1108
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    .line 1292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ue:Ljava/util/HashMap;

    .line 1293
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uf:Z

    .line 1310
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->gH:Ljava/util/HashMap;

    .line 1346
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    .line 1352
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->oo:Ljava/lang/ThreadLocal;

    .line 1356
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uk:Ljava/lang/ThreadLocal;

    .line 1364
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    .line 1371
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    .line 1377
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->us:Ljava/lang/ThreadLocal;

    .line 1384
    new-instance v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/TransactionContext;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uv:Lcom/android/providers/contacts/TransactionContext;

    .line 1385
    new-instance v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/TransactionContext;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uw:Lcom/android/providers/contacts/TransactionContext;

    .line 1386
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    .line 1393
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uz:Ljava/util/Map;

    .line 1396
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uA:Ljava/security/SecureRandom;

    .line 1403
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    .line 1404
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uD:Ljava/util/HashMap;

    .line 1406
    iput v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    .line 1408
    iput-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->iJ:J

    .line 1412
    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uJ:Z

    .line 1414
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    .line 1424
    iput-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uQ:J

    .line 7968
    return-void
.end method

.method private A(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 4288
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4289
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "mode"

    const-string v2, "mode"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4291
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "chat_capability"

    const-string v2, "chat_capability"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4293
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    return-object v0
.end method

.method private M(J)V
    .locals 2
    .parameter

    .prologue
    .line 2727
    const-string v0, "raw_contacts._id=? AND groups.account_name=raw_contacts.account_name AND groups.account_type=raw_contacts.account_type AND (groups.data_set=raw_contacts.data_set OR groups.data_set IS NULL AND raw_contacts.data_set IS NULL) AND auto_add != 0"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    .line 2729
    if-eqz v0, :cond_0

    .line 2730
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->i(JJ)V

    .line 2732
    :cond_0
    return-void
.end method

.method private N(J)J
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2938
    const-wide/16 v8, -0x1

    .line 2939
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v7

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2944
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2945
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2948
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2950
    return-wide v0

    .line 2948
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move-wide v0, v8

    goto :goto_0
.end method

.method private O(J)Z
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3855
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "account_name"

    aput-object v3, v2, v9

    const-string v3, "account_type"

    aput-object v3, v2, v8

    const-string v3, "data_set"

    aput-object v3, v2, v4

    const-string v3, "_id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3864
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 3866
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    move v0, v9

    .line 3864
    goto :goto_0

    .line 3866
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private P(J)I
    .locals 6
    .parameter

    .prologue
    .line 3900
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->Q(J)I

    .line 3901
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private Q(J)I
    .locals 6
    .parameter

    .prologue
    .line 3918
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_item_photos"

    const-string v2, "stream_item_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private R(J)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xa

    .line 7625
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->us:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->C(J)Lcom/android/providers/contacts/PhotoStore$Entry;

    move-result-object v0

    .line 7626
    if-eqz v0, :cond_0

    .line 7628
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 7632
    :catch_0
    move-exception v0

    .line 7633
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 7634
    throw v0

    .line 7637
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 7638
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No photo file found for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(JLandroid/content/ContentValues;Z)I
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4385
    const-string v2, "_id = ?"

    .line 4386
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4387
    const-string v2, "deleted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "deleted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move v14, v2

    .line 4389
    :goto_0
    const/4 v13, 0x0

    .line 4390
    const/4 v12, 0x0

    .line 4391
    const/4 v11, 0x0

    .line 4392
    const/4 v10, 0x0

    .line 4393
    if-eqz v14, :cond_d

    .line 4394
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "raw_contacts"

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "_id = ?"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4397
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4398
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 4399
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4400
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4401
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4404
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4406
    const-string v6, "aggregation_mode"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v10, v2

    move-object v11, v3

    .line 4410
    :goto_2
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "raw_contacts"

    const-string v6, "_id = ?"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 4411
    if-eqz v6, :cond_7

    .line 4412
    const-string v2, "aggregation_mode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4413
    const-string v2, "aggregation_mode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4417
    if-eqz v3, :cond_0

    .line 4418
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    const/4 v7, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3, v7}, Lcom/android/providers/contacts/ContactAggregator;->a(JIZ)V

    .line 4421
    :cond_0
    const-string v2, "starred"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4422
    if-nez p4, :cond_1

    .line 4423
    const-string v2, "starred"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_3
    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(JZ)V

    .line 4426
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->u(J)V

    .line 4442
    :cond_2
    :goto_4
    if-nez p4, :cond_3

    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4443
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->M(J)V

    .line 4446
    :cond_3
    const-string v2, "sourceid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4447
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->q(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4449
    :cond_4
    const-string v2, "name_verified"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4453
    const-string v2, "name_verified"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    .line 4454
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->c(J)V

    .line 4456
    :cond_5
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->i(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4458
    :cond_6
    if-eqz v14, :cond_7

    const/4 v2, 0x1

    if-ne v5, v2, :cond_7

    .line 4459
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    new-instance v3, Lcom/android/providers/contacts/AccountWithDataSet;

    invoke-direct {v3, v11, v4, v10}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/providers/contacts/TransactionContext;->a(JLcom/android/providers/contacts/AccountWithDataSet;)V

    .line 4461
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v2

    if-nez v2, :cond_7

    .line 4462
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->m(J)V

    .line 4466
    :cond_7
    return v6

    .line 4387
    :cond_8
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_0

    .line 4404
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    .line 4423
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 4432
    :cond_a
    if-nez p4, :cond_2

    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4433
    const-wide/16 v7, 0x0

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT starred FROM raw_contacts WHERE _id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    invoke-static {v2, v3, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v7, v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    .line 4436
    :goto_5
    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(JZ)V

    goto/16 :goto_4

    .line 4433
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move v5, v13

    goto/16 :goto_1

    :cond_d
    move-object v4, v12

    move v5, v13

    goto/16 :goto_2
.end method

.method private a(Landroid/content/ContentValues;Landroid/database/Cursor;Z)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4507
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4519
    :goto_0
    return v6

    .line 4511
    :cond_0
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4512
    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/ContactsProvider2;->aa(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    .line 4513
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    .line 4516
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4517
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 4519
    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v6, v0

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 4356
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contact_id should not be included in content values. Contact IDs are assigned automatically"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4361
    :cond_0
    if-nez p4, :cond_2

    .line 4362
    const-string v0, "raw_contact_is_read_only=0"

    invoke-static {p2, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4367
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "view_raw_contacts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move v0, v8

    .line 4371
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4372
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4373
    invoke-direct {p0, v2, v3, p1, p4}, Lcom/android/providers/contacts/ContactsProvider2;->a(JLandroid/content/ContentValues;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4374
    add-int/lit8 v0, v0, 0x1

    .line 4375
    goto :goto_1

    .line 4377
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4380
    return v0

    .line 4377
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move-object v3, p2

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4299
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->gH:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4302
    if-nez p5, :cond_0

    const-string v0, "dirty"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4303
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    .line 4304
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4305
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 4306
    const-string v1, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object p2, v0

    .line 4311
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 4313
    const-string v0, "group_visible"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4314
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    .line 4320
    :cond_1
    const-string v0, "should_sync"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "should_sync"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    .line 4322
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "account_name"

    aput-object v3, v2, v6

    const-string v3, "account_type"

    aput-object v3, v2, v4

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4328
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4329
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4330
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4332
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4333
    const-string v0, "com.android.contacts"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v3, v0, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4339
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4342
    :cond_4
    return v8

    .line 4339
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3119
    const/4 v6, 0x0

    .line 3123
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3126
    :goto_0
    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move v2, v6

    .line 3129
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3130
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3131
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3132
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aa(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v6

    .line 3133
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v6, v0, v1, v3}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    add-int v1, v2, v0

    .line 3134
    if-nez p3, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->w(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v2, v1

    .line 3137
    goto :goto_1

    .line 3123
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 3139
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3142
    return v2

    .line 3139
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Landroid/content/ContentValues;Z)J
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 2785
    .line 2786
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2787
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2789
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2792
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2793
    if-eqz v1, :cond_0

    .line 2794
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v5, "package_id"

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->j(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2799
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2800
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2801
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mimetype is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2804
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v5, "mimetype_id"

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2805
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2807
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->aa(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    .line 2808
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v1

    .line 2809
    if-nez p2, :cond_2

    .line 2810
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/contacts/TransactionContext;->w(J)V

    .line 2812
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/contacts/TransactionContext;->v(J)V

    .line 2813
    return-wide v1
.end method

.method private a(Landroid/net/Uri;Landroid/content/ContentValues;Z)J
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2685
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2686
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2687
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2689
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->e(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v4

    .line 2691
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2692
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->x(Landroid/content/ContentValues;)V

    .line 2695
    :cond_0
    const-string v0, "deleted"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "deleted"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2697
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2700
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const-string v5, "contact_id"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2703
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2704
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 2706
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/providers/contacts/ContactAggregator;->a(JI)V

    .line 2709
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/providers/contacts/TransactionContext;->a(JLcom/android/providers/contacts/AccountWithDataSet;)V

    .line 2711
    if-nez p3, :cond_3

    .line 2712
    invoke-direct {p0, v5, v6}, Lcom/android/providers/contacts/ContactsProvider2;->M(J)V

    .line 2713
    const-string v0, "starred"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2714
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v7, v9

    if-eqz v1, :cond_3

    .line 2715
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-direct {p0, v5, v6, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(JZ)V

    .line 2719
    :cond_3
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uF:Z

    .line 2720
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2721
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/android/providers/contacts/T9SearchSupport;->m(J)V

    .line 2723
    :cond_4
    return-wide v5

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)J
    .locals 16
    .parameter

    .prologue
    .line 6787
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6789
    const-wide/16 v6, -0x1

    .line 6790
    const/4 v3, 0x0

    .line 6792
    const-wide/16 v4, -0x1

    .line 6793
    const/4 v2, 0x0

    .line 6795
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 6796
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_2

    .line 6797
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6798
    iget-wide v10, v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 6799
    iget-wide v10, v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J

    cmp-long v10, v10, v4

    if-nez v10, :cond_1

    .line 6800
    add-int/lit8 v2, v2, 0x1

    .line 6796
    :cond_0
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    .line 6802
    :cond_1
    if-le v2, v3, :cond_4

    move-wide v3, v4

    .line 6806
    :goto_2
    iget-wide v5, v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J

    .line 6807
    const/4 v1, 0x1

    move-wide v14, v5

    move-wide v6, v3

    move v3, v2

    move-wide v4, v14

    move v2, v1

    goto :goto_1

    .line 6811
    :cond_2
    if-le v2, v3, :cond_3

    .line 6814
    :goto_3
    return-wide v4

    :cond_3
    move-wide v4, v6

    goto :goto_3

    :cond_4
    move v2, v3

    move-wide v3, v6

    goto :goto_2
.end method

.method private a(JJLandroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7660
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 7661
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;

    const/4 v1, 0x0

    aget-object v6, v8, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;-><init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;Lcom/android/providers/contacts/ContactsProvider2$1;)V

    .line 7662
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 7663
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x1

    aget-object v1, v8, v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7666
    :goto_0
    return-object v0

    .line 7664
    :catch_0
    move-exception v0

    .line 7665
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create temp image file in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7666
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7600
    const-string v0, "r"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7601
    new-instance v1, Ljava/io/FileNotFoundException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7605
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT data15 FROM view_data WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7609
    :try_start_0
    invoke-static {p1, v0, p5}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 7611
    :catch_0
    move-exception v0

    .line 7613
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .parameter

    .prologue
    .line 7765
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 7769
    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .parameter

    .prologue
    .line 7751
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 7753
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 7755
    const-string v1, "contactAssetFile"

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    array-length v0, v0

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7760
    :goto_0
    return-object v0

    .line 7758
    :catch_0
    move-exception v0

    .line 7759
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem writing stream into an ParcelFileDescriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7760
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;
    .locals 1
    .parameter

    .prologue
    .line 5057
    .line 5058
    instance-of v0, p1, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 5059
    check-cast p1, Landroid/database/CrossProcessCursor;

    .line 5063
    :goto_0
    return-object p1

    .line 5060
    :cond_0
    instance-of v0, p1, Landroid/database/CursorWindow;

    if-eqz v0, :cond_1

    .line 5061
    check-cast p1, Landroid/database/CursorWrapper;

    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;

    move-result-object p1

    goto :goto_0

    .line 5063
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6432
    instance-of v1, p1, Landroid/database/AbstractCursor;

    if-nez v1, :cond_0

    .line 6433
    const-string v1, "ContactsProvider"

    const-string v2, "Unable to bundle extras.  Cursor is not AbstractCursor."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6536
    :goto_0
    return-object p1

    .line 6441
    :cond_0
    const-string v1, ""

    .line 6442
    if-eqz p6, :cond_5

    .line 6443
    const/16 v2, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 6444
    const/4 v2, -0x1

    if-eq v3, v2, :cond_1

    .line 6445
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6446
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 p6, v2

    .line 6454
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6455
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 6456
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SUBSTR(%1$s,1,1)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p6, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6458
    const-string v5, "letter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "letter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6462
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6463
    const-string p7, "*"

    .line 6473
    :cond_2
    const-string v5, "title"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GET_PHONEBOOK_INDEX("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "title"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6476
    const-string v2, "count"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COUNT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6478
    invoke-virtual {p3, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6480
    sget-object v3, Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "letter COLLATE PHONEBOOK"

    const/4 v7, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "letter COLLATE PHONEBOOK"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p3

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6485
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 6486
    new-array v5, v8, [Ljava/lang/String;

    .line 6487
    new-array v4, v8, [I

    .line 6488
    const/4 v3, 0x0

    .line 6489
    const/4 v2, 0x0

    .line 6494
    const/4 v1, 0x0

    move v6, v1

    move-object v1, v2

    :goto_2
    if-ge v6, v8, :cond_7

    .line 6495
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 6496
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6497
    const/4 v9, 0x2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 6506
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 6507
    const-string v2, "#"

    .line 6510
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 6511
    :cond_4
    aput-object v2, v5, v3

    .line 6512
    aput v9, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6513
    add-int/lit8 v1, v3, 0x1

    move-object v11, v2

    move v2, v1

    move-object v1, v11

    .line 6494
    :goto_3
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v2

    goto :goto_2

    .line 6451
    :cond_5
    const-string p6, "sort_key"

    goto/16 :goto_1

    .line 6515
    :cond_6
    add-int/lit8 v2, v3, -0x1

    :try_start_1
    aget v10, v4, v2

    add-int/2addr v9, v10

    aput v9, v4, v2

    move v2, v3

    goto :goto_3

    .line 6519
    :cond_7
    if-ge v3, v8, :cond_8

    .line 6520
    new-array v2, v3, [Ljava/lang/String;

    .line 6521
    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6524
    new-array v1, v3, [I

    .line 6525
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6529
    :goto_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 6530
    const-string v4, "address_book_index_titles"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6531
    const-string v2, "address_book_index_counts"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 6533
    move-object v0, p1

    check-cast v0, Landroid/database/AbstractCursor;

    move-object v1, v0

    invoke-virtual {v1, v3}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6536
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_8
    move-object v1, v4

    move-object v2, v5

    goto :goto_4
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6348
    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "_count"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6350
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tA:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6352
    :cond_0
    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6354
    if-eqz v0, :cond_1

    .line 6355
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 6357
    :cond_1
    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6387
    if-nez p6, :cond_0

    .line 6388
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    .line 6393
    :goto_0
    const/4 v1, 0x0

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 6394
    const/4 v1, 0x1

    invoke-static/range {p14 .. p14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 6395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 6396
    invoke-direct/range {v1 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6398
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 6403
    :goto_1
    return-object v1

    .line 6390
    :cond_0
    move-object/from16 v0, p6

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    .line 6391
    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object/from16 v0, p6

    array-length v3, v0

    move-object/from16 v0, p6

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 6402
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6403
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5007
    const-string v0, "snippet"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 5040
    :cond_0
    :goto_0
    return-object p2

    .line 5012
    :cond_1
    const/4 v0, 0x0

    .line 5013
    const-string v1, "snippet_args"

    invoke-static {p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5015
    if-eqz v1, :cond_2

    .line 5016
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5019
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 5020
    if-eqz v0, :cond_5

    array-length v2, v0

    if-lez v2, :cond_5

    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 5022
    :goto_1
    if-eqz v0, :cond_6

    array-length v2, v0

    if-le v2, v3, :cond_6

    aget-object v2, v0, v3

    .line 5024
    :goto_2
    if-eqz v0, :cond_7

    array-length v2, v0

    if-le v2, v4, :cond_7

    aget-object v2, v0, v4

    .line 5026
    :goto_3
    if-eqz v0, :cond_3

    array-length v2, v0

    if-le v2, v5, :cond_3

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 5030
    :cond_3
    instance-of v0, p2, Landroid/database/AbstractCursor;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->u(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5031
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 5032
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5033
    if-eqz v0, :cond_4

    .line 5034
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 5036
    :cond_4
    const-string v0, "deferred_snippeting_query"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 5038
    check-cast v0, Landroid/database/AbstractCursor;

    invoke-virtual {v0, v2}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 5020
    :cond_5
    const-string v2, "["

    goto :goto_1

    .line 5022
    :cond_6
    const-string v2, "]"

    goto :goto_2

    .line 5024
    :cond_7
    const-string v2, "..."

    goto :goto_3
.end method

.method private a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 6364
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 6365
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 6366
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 6367
    const-string v3, "status"

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6368
    iget v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 6366
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6369
    :cond_1
    const-string v3, "data1"

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6370
    iget-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->iJ:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 6373
    :cond_2
    return-object v1
.end method

.method private a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3536
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 3549
    :cond_0
    :goto_0
    return-object v0

    .line 3539
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 3540
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 3541
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3542
    const-string v3, "ContactsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") is of type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3548
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3547
    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 7284
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7285
    const-string v0, "account_type"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7286
    const-string v0, "data_set"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7288
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v0, v4

    .line 7289
    if-eqz v0, :cond_0

    .line 7291
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7297
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 7298
    :goto_0
    if-eqz v0, :cond_2

    .line 7299
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "account_type"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7303
    if-nez v3, :cond_4

    .line 7304
    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7309
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7310
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7311
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7312
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7314
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7316
    :cond_2
    return-object p2

    .line 7297
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 7306
    :cond_4
    const-string v1, " AND data_set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3027
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 3028
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3029
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 3030
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3034
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3035
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3038
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/accounts/Account;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3041
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3043
    return-object v8
.end method

.method static synthetic a(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private a(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2750
    const-string v0, "raw_contacts._id=? AND groups.account_name=raw_contacts.account_name AND groups.account_type=raw_contacts.account_type AND (groups.data_set=raw_contacts.data_set OR groups.data_set IS NULL AND raw_contacts.data_set IS NULL) AND favorites != 0"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    .line 2752
    if-eqz v0, :cond_0

    .line 2753
    if-eqz p3, :cond_1

    .line 2754
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->i(JJ)V

    .line 2759
    :cond_0
    :goto_0
    return-void

    .line 2756
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->j(JJ)V

    goto :goto_0
.end method

.method private a(Landroid/accounts/Account;J)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2988
    const-string v3, "raw_contacts._id=? AND raw_contacts.account_name=? AND raw_contacts.account_type=?"

    .line 2991
    const-string v6, "raw_contacts._id=? AND raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL"

    .line 2995
    if-eqz p1, :cond_0

    .line 2996
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "raw_contacts._id"

    aput-object v4, v2, v7

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 3007
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3008
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller account does not match raw contact ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3012
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3001
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "raw_contacts._id"

    aput-object v3, v2, v7

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    move-object v3, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 3012
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3014
    return-void
.end method

.method private varargs a(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8053
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p3, v0

    .line 8054
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8055
    if-eqz v3, :cond_0

    .line 8056
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8053
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8059
    :cond_1
    return-void
.end method

.method private a(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 6246
    invoke-static {p3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v9

    .line 6247
    if-nez v9, :cond_1

    .line 6343
    :cond_0
    :goto_0
    return-void

    .line 6250
    :cond_1
    invoke-virtual {v9, v2, v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 6251
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6254
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6256
    array-length v0, p4

    if-ne v0, v2, :cond_2

    aget-object v0, p4, v8

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6257
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v8

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 6262
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6266
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    .line 6270
    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_11

    .line 6273
    :cond_3
    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 6274
    invoke-virtual {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 6276
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const-string v3, "addr=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 6286
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 6288
    :cond_4
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    .line 6289
    :goto_2
    array-length v2, p4

    if-ge v8, v2, :cond_a

    .line 6290
    aget-object v2, p4, v8

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6291
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    .line 6289
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 6292
    :cond_5
    aget-object v2, p4, v8

    const-string v3, "display_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6293
    const-string v2, ""

    aput-object v2, v0, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 6336
    :catchall_0
    move-exception v0

    move-object v6, v7

    :goto_4
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 6337
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6339
    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 6340
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 6294
    :cond_8
    :try_start_3
    aget-object v2, p4, v8

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6295
    aput-object p3, v0, v8

    goto :goto_3

    .line 6297
    :cond_9
    const/4 v2, 0x0

    aput-object v2, v0, v8

    goto :goto_3

    .line 6300
    :cond_a
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    move-object v6, v1

    .line 6336
    :goto_6
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6337
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6339
    :cond_b
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 6303
    :cond_c
    :try_start_4
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    .line 6304
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6305
    :goto_7
    array-length v2, p4

    if-ge v8, v2, :cond_10

    .line 6306
    aget-object v2, p4, v8

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6307
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    .line 6305
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 6308
    :cond_d
    aget-object v2, p4, v8

    const-string v3, "display_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6309
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    goto :goto_8

    .line 6310
    :cond_e
    aget-object v2, p4, v8

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6311
    aput-object p3, v0, v8

    goto :goto_8

    .line 6313
    :cond_f
    const/4 v2, 0x0

    aput-object v2, v0, v8

    goto :goto_8

    .line 6316
    :cond_10
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 6320
    :cond_11
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6321
    array-length v0, p4

    new-array v1, v0, [Ljava/lang/Object;

    move v0, v8

    .line 6322
    :goto_9
    array-length v2, p4

    if-ge v0, v2, :cond_15

    .line 6323
    aget-object v2, p4, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 6324
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 6322
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 6325
    :cond_12
    aget-object v2, p4, v0

    const-string v3, "display_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 6326
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_a

    .line 6336
    :catchall_1
    move-exception v0

    move-object v1, v6

    move-object v6, v7

    goto/16 :goto_4

    .line 6327
    :cond_13
    aget-object v2, p4, v0

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 6328
    aput-object p3, v1, v0

    goto :goto_a

    .line 6330
    :cond_14
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_a

    .line 6333
    :cond_15
    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_6

    .line 6336
    :catchall_2
    move-exception v0

    move-object v1, v6

    goto/16 :goto_4

    :cond_16
    move-object v5, p3

    goto/16 :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7076
    const-string v1, "view_raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7077
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 7078
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tI:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 7079
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 7080
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6820
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 6821
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6861
    const-string v0, "view_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6863
    if-eqz p4, :cond_2

    .line 6864
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 6867
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, p5, v2

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-eqz v0, :cond_1

    .line 6868
    :cond_0
    const-string v0, " JOIN (SELECT NULL AS snippet WHERE 0)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6872
    :goto_1
    const-string v0, "_id"

    invoke-direct {p0, v1, p3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6873
    const-string v0, "status_update_id"

    invoke-direct {p0, v1, p3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6874
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6875
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tC:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6876
    return-void

    :cond_1
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p7

    .line 6870
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    move-object v4, p4

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6831
    if-eqz p4, :cond_0

    .line 6832
    const-string v1, "view_data_usage_stat AS data_usage_stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6833
    const-string v1, " INNER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6836
    :cond_0
    const-string v1, "view_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6839
    if-eqz p4, :cond_1

    .line 6840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ON ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data_usage_stat.times_used > 0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id=view_contacts._id"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6847
    :cond_1
    const-string v1, "_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6848
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6849
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6850
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tB:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6851
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7104
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZLjava/lang/Integer;)V

    .line 7105
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7095
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZLjava/lang/Integer;)V

    .line 7096
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZLjava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7110
    const-string v1, "view_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7111
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7113
    const-string v1, "contact_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7114
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7115
    const-string v1, "data._id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->d(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7116
    const-string v1, "data._id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->b(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7118
    if-eqz p6, :cond_0

    .line 7119
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "data._id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 7122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 7124
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tr:[Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 7126
    :goto_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 7129
    if-eqz p5, :cond_4

    .line 7130
    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tP:Lcom/android/providers/contacts/ProjectionMap;

    .line 7136
    :goto_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 7137
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 7138
    return-void

    .line 7124
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 7130
    :cond_3
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tN:Lcom/android/providers/contacts/ProjectionMap;

    goto :goto_1

    .line 7133
    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tO:Lcom/android/providers/contacts/ProjectionMap;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tM:Lcom/android/providers/contacts/ProjectionMap;

    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7143
    const-string v1, "view_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7144
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7145
    const-string v1, "data._id"

    invoke-direct {p0, v0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->d(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7146
    const-string v1, "data._id"

    invoke-direct {p0, v0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->b(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 7149
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tW:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 7150
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 7779
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 7780
    sget v0, Lcom/android/vcard/VCardConfig;->bv:I

    .line 7781
    const-string v1, "nophoto"

    invoke-virtual {p1, v1, v4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7783
    const/high16 v1, 0x80

    or-int/2addr v0, v1

    move v1, v0

    .line 7785
    :goto_0
    new-instance v0, Lcom/android/vcard/VCardComposer;

    invoke-direct {v0, v3, v1, v4}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 7789
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->l(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7793
    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->m(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 7798
    :goto_1
    :try_start_0
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 7799
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7800
    const-string v1, "ContactsProvider"

    const-string v2, "Failed to init VCardComposer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7810
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 7811
    if-eqz v6, :cond_0

    .line 7813
    :try_start_2
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7819
    :cond_0
    :goto_2
    return-void

    .line 7795
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 7814
    :catch_0
    move-exception v0

    .line 7815
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7804
    :cond_2
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7805
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->aw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 7807
    :catch_1
    move-exception v1

    move-object v2, v6

    .line 7808
    :goto_4
    :try_start_4
    const-string v3, "ContactsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7810
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 7811
    if-eqz v2, :cond_0

    .line 7813
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 7814
    :catch_2
    move-exception v0

    .line 7815
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7810
    :cond_3
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 7811
    if-eqz v6, :cond_0

    .line 7813
    :try_start_6
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 7814
    :catch_3
    move-exception v0

    .line 7815
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7810
    :catchall_0
    move-exception v1

    :goto_5
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 7811
    if-eqz v2, :cond_4

    .line 7813
    :try_start_7
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 7816
    :cond_4
    :goto_6
    throw v1

    .line 7814
    :catch_4
    move-exception v0

    .line 7815
    const-string v2, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException during closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 7810
    :catchall_1
    move-exception v1

    move-object v2, v6

    goto :goto_5

    .line 7807
    :catch_5
    move-exception v1

    goto/16 :goto_4

    :cond_5
    move v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN data_usage_stat ON (data_usage_stat.data_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_usage_stat.usage_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7220
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 6882
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->j([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6884
    const-string v0, "snippet_args"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6886
    if-eqz v0, :cond_5

    .line 6887
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 6890
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v4, v0, v9

    .line 6892
    :goto_1
    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, v3, :cond_1

    aget-object v5, v0, v3

    .line 6894
    :goto_2
    if-eqz v0, :cond_2

    array-length v1, v0

    if-le v1, v2, :cond_2

    aget-object v6, v0, v2

    .line 6896
    :goto_3
    if-eqz v0, :cond_3

    array-length v1, v0

    if-le v1, v7, :cond_3

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v8, p5

    .line 6899
    invoke-virtual/range {v0 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 6905
    :goto_5
    return-void

    .line 6890
    :cond_0
    const-string v4, "["

    goto :goto_1

    .line 6892
    :cond_1
    const-string v5, "]"

    goto :goto_2

    .line 6894
    :cond_2
    const-string v6, "..."

    goto :goto_3

    .line 6896
    :cond_3
    const/16 v7, -0xa

    goto :goto_4

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, v9

    move-object v5, v4

    move-object v6, v4

    move v7, v9

    move v8, v9

    .line 6903
    invoke-virtual/range {v0 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_5

    :cond_5
    move-object v0, v4

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7061
    const-string v0, "snippet(search_index,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7062
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 7063
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7064
    invoke-static {p1, p3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 7065
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7066
    invoke-static {p1, p4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 7069
    const-string v0, ",1,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7070
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7071
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7072
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2395
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2396
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2399
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2400
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7189
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contact_status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "contact_status_res_package"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "contact_status_icon"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "contact_status_label"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "contact_status_ts"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN status_updates contacts_status_updates ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts_status_updates.status_update_data_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7200
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1545
    const-string v0, "vnd.android.cursor.item/email_v2"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForEmail;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForEmail;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    const-string v0, "vnd.android.cursor.item/im"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForIm;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForIm;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    const-string v0, "vnd.android.cursor.item/organization"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForOrganization;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    const-string v0, "vnd.android.cursor.item/phone_v2"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    const-string v0, "vnd.android.cursor.item/nickname"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForNickname;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForNickname;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    const-string v6, "vnd.android.cursor.item/name"

    new-instance v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->ix:Lcom/android/providers/contacts/NameSplitter;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->ir:Lcom/android/providers/contacts/NameLookupBuilder;

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uh:Lcom/android/providers/contacts/PostalSplitter;

    invoke-direct {v2, v1, p2, p3, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PostalSplitter;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    const-string v0, "vnd.android.cursor.item/group_membership"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->gH:Ljava/util/HashMap;

    invoke-direct {v2, v1, p2, p3, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/util/HashMap;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const-string v0, "vnd.android.cursor.item/photo"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForPhoto;

    invoke-direct {v2, v1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    const-string v0, "vnd.android.cursor.item/note"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForNote;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForNote;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    return-void
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .parameter

    .prologue
    .line 2029
    if-nez p1, :cond_0

    .line 2036
    :goto_0
    return-void

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2035
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;J)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 7241
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 7242
    const-string v1, "_id IN default_directory"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 7248
    :goto_0
    return v0

    .line 7244
    :cond_0
    const-wide/16 v1, 0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 7245
    const-string v1, "_id NOT IN default_directory"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8141
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 8142
    if-nez v2, :cond_1

    .line 8153
    :cond_0
    :goto_0
    return p2

    .line 8146
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 8147
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 8151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 8153
    const-string v4, "=0"

    invoke-static {v2, v3, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->b(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "=false"

    invoke-static {v2, v3, v4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->b(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private ac(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3531
    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ad(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 4265
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4266
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v1, "status_update_data_id IN (SELECT Distinct presence_data_id FROM status_updates LEFT OUTER JOIN presence ON status_update_data_id = presence_data_id WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4267
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4268
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4269
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ae(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .parameter

    .prologue
    .line 4895
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4896
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT DISTINCT account_name,account_type,data_set FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4901
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4902
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4903
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4904
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4905
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.android.contacts.default"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4909
    :cond_1
    const-string v4, "SIM"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.android.contacts.sim"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4913
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4919
    :cond_3
    new-instance v0, Lcom/android/providers/contacts/AccountWithDataSet;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4924
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4926
    return-object v1
.end method

.method private af(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;
    .locals 9
    .parameter

    .prologue
    .line 5099
    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->ue:Ljava/util/HashMap;

    monitor-enter v8

    .line 5100
    :try_start_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uf:Z

    if-nez v0, :cond_1

    .line 5101
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5102
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5103
    const-string v1, "directories"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 5107
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5108
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;-><init>(Lcom/android/providers/contacts/ContactsProvider2$1;)V

    .line 5109
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5110
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->authority:Ljava/lang/String;

    .line 5111
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->i:Ljava/lang/String;

    .line 5112
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountType:Ljava/lang/String;

    .line 5113
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->ue:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5116
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5122
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 5116
    :cond_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uf:Z

    .line 5121
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ue:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0
.end method

.method private static ag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 7056
    const-string v0, "\'"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ai(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 8422
    const-string v1, "[^\\w@]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private az(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 6581
    const-string v1, "contacts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v8, "1"

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6584
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6585
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 6590
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_0
    return-wide v0

    .line 6587
    :cond_0
    const-wide/16 v0, -0x1

    .line 6590
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private b(JLandroid/content/ContentValues;Z)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4544
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4545
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    const-string v2, "custom_ringtone"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4547
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4549
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4551
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4553
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "starred"

    const-string v2, "starred"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4557
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 4610
    :goto_0
    return v0

    .line 4561
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4563
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "dirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4566
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 4567
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v3, "contact_id=? AND raw_contact_is_read_only=0"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4570
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 4571
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "view_raw_contacts"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4575
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4576
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4577
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "starred"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    move v0, v9

    :goto_2
    invoke-direct {p0, v2, v3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4581
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v8

    .line 4577
    goto :goto_2

    .line 4581
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4587
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4588
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    const-string v2, "custom_ringtone"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4590
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4592
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4594
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4596
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "starred"

    const-string v2, "starred"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4599
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contacts"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 4602
    const-string v0, "last_time_contacted"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "times_contacted"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4604
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE _id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4605
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE raw_contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE contact_id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4606
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4607
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->o(J)V

    :cond_5
    move v0, v1

    .line 4610
    goto/16 :goto_0
.end method

.method private b(JZ)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3800
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 3801
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3805
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3806
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3807
    invoke-direct {p0, v2, v3, p3}, Lcom/android/providers/contacts/ContactsProvider2;->c(JZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3810
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3813
    iput-boolean v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->uF:Z

    .line 3815
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 4524
    .line 4525
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "view_contacts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move v0, v8

    .line 4528
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4529
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4531
    invoke-direct {p0, v2, v3, p1, p4}, Lcom/android/providers/contacts/ContactsProvider2;->b(JLandroid/content/ContentValues;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4532
    add-int/lit8 v0, v0, 0x1

    .line 4533
    goto :goto_0

    .line 4535
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4538
    return v0

    .line 4535
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4614
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4615
    const-string v0, "raw_contact_id1"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 4616
    const-string v0, "raw_contact_id2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 4620
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    move-wide v4, v2

    move-wide v2, v0

    .line 4628
    :goto_0
    if-nez v6, :cond_1

    .line 4629
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ky:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 4630
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ky:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 4631
    const-string v0, "agg_exceptions"

    const-string v1, "raw_contact_id1=? AND raw_contact_id2=?"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->ky:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4643
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->dU()V

    .line 4644
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v4, v5, v8, v7}, Lcom/android/providers/contacts/ContactAggregator;->a(JIZ)V

    .line 4646
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v2, v3, v8, v7}, Lcom/android/providers/contacts/ContactAggregator;->a(JIZ)V

    .line 4649
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1, p1, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->b(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4650
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->b(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4654
    return v7

    :cond_0
    move-wide v4, v0

    .line 4625
    goto :goto_0

    .line 4635
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 4636
    const-string v1, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4637
    const-string v1, "raw_contact_id1"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4638
    const-string v1, "raw_contact_id2"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4639
    const-string v1, "agg_exceptions"

    const-string v6, "_id"

    invoke-virtual {p1, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1
.end method

.method private b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3885
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 3886
    invoke-direct {p0, v0, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3890
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3891
    invoke-direct {p0, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->P(J)I

    goto :goto_0

    .line 3894
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    .line 3895
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4471
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4472
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 4473
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4474
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4475
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4477
    const-string v0, "res_package"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4478
    if-eqz v1, :cond_0

    .line 4479
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4480
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v3, "package_id"

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->j(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4483
    :cond_0
    if-nez p5, :cond_2

    .line 4484
    const-string v0, "is_read_only=0"

    invoke-static {p3, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4488
    :goto_0
    const/4 v8, 0x0

    .line 4492
    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    move v0, v8

    .line 4496
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4497
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-direct {p0, v2, v1, p5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/ContentValues;Landroid/database/Cursor;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 4500
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4503
    return v0

    .line 4500
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move-object v3, p3

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3794
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3795
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    .line 3796
    return v0
.end method

.method static synthetic b(Lcom/android/providers/contacts/ContactsProvider2;)I
    .locals 1
    .parameter

    .prologue
    .line 184
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sT:I

    return v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 6612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6613
    const-string v0, "sourceid IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 6614
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6615
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6616
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    if-nez v2, :cond_0

    .line 6617
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6618
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6614
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6621
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6622
    const-string v0, ") AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6624
    const-string v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupBySourceIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6627
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6628
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6630
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6631
    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactLookupKey;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6633
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v1, v8

    .line 6634
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 6635
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6636
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    if-nez v5, :cond_3

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vS:I

    if-ne v3, v5, :cond_3

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6639
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6645
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6634
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6645
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6648
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Landroid/net/Uri;Landroid/content/ContentValues;Z)J
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3186
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 3188
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->e(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v2

    .line 3190
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->x(Landroid/content/ContentValues;)V

    .line 3193
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3194
    if-eqz v1, :cond_0

    .line 3195
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "package_id"

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->j(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3197
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3199
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 3203
    :goto_0
    if-nez p3, :cond_1

    .line 3204
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3207
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "groups"

    const-string v4, "title"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 3209
    if-nez p3, :cond_8

    if-eqz v1, :cond_8

    .line 3213
    if-nez v2, :cond_5

    .line 3214
    const-string v3, "account_name IS NULL AND account_type IS NULL AND data_set IS NULL"

    .line 3217
    const/4 v4, 0x0

    .line 3236
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "starred"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3240
    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3241
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 3242
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3243
    invoke-direct {p0, v2, v3, v8, v9}, Lcom/android/providers/contacts/ContactsProvider2;->i(JJ)V

    .line 3244
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/TransactionContext;->w(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3248
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3199
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 3218
    :cond_5
    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3219
    const-string v3, "account_name=? AND account_type=? AND data_set IS NULL"

    .line 3222
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto :goto_1

    .line 3227
    :cond_6
    const-string v3, "account_name=? AND account_type=? AND data_set=?"

    .line 3230
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto/16 :goto_1

    .line 3248
    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3252
    :cond_8
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "group_visible"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    .line 3256
    :cond_9
    return-wide v8
.end method

.method private b(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 8020
    if-nez p2, :cond_0

    .line 8021
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tM:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    .line 8024
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 8025
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aa(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;

    .line 8028
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    const-string v5, "data4"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "data2"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "data5"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "data3"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "data6"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "phonetic_name"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "data9"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "data8"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "data7"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, p1, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 8041
    invoke-virtual {v0, v2, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->b(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 8043
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 8044
    array-length v0, p2

    new-array v4, v0, [Ljava/lang/Object;

    move v0, v1

    .line 8045
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 8046
    aget-object v1, p2, v0

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v0

    .line 8045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8048
    :cond_1
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 8049
    return-object v3
.end method

.method private b(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2735
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups,raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->tq:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2740
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2741
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 2745
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private b(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3057
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 3058
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3059
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 3060
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3064
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3065
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3068
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/accounts/Account;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3071
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3073
    return-object v8
.end method

.method private b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7083
    const-string v0, "view_raw_entities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 7084
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tJ:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 7085
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 7086
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7174
    const-string v1, "view_entities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7175
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7177
    const-string v1, "contact_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7178
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7179
    const-string v1, "data_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->d(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7180
    const-string v1, "data_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->b(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 7182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 7183
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tK:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 7184
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 7185
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7090
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZLjava/lang/Integer;)V

    .line 7091
    return-void
.end method

.method private b(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7204
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "status_res_package"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "status_icon"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "status_label"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "status_ts"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN status_updates ON (status_updates.status_update_data_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7214
    :cond_0
    return-void
.end method

.method private b([Landroid/accounts/Account;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4868
    .line 4869
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 4870
    invoke-virtual {p0, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4871
    add-int/lit8 v0, v0, 0x1

    .line 4869
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4874
    :cond_1
    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uN:I

    .line 4875
    return-void
.end method

.method private b(Landroid/content/ContentValues;Z)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2905
    const-string v0, "photo"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2928
    :cond_0
    :goto_0
    return p2

    .line 2908
    :cond_1
    const-string v0, "photo"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 2909
    if-eqz v3, :cond_0

    .line 2915
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->us:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore;

    new-instance v4, Lcom/android/providers/contacts/PhotoProcessor;

    iget v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->sT:I

    iget v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->sU:I

    const/4 v7, 0x1

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/android/providers/contacts/PhotoProcessor;-><init>([BIIZ)V

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/android/providers/contacts/PhotoStore;->a(Lcom/android/providers/contacts/PhotoProcessor;Z)J

    move-result-wide v3

    .line 2917
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 2918
    const-string v0, "photo_file_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2919
    const-string v0, "photo"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move p2, v1

    .line 2920
    goto :goto_0

    .line 2923
    :cond_2
    const-string v0, "ContactsProvider"

    const-string v1, "Could not process stream item photo for insert"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v2

    .line 2924
    goto :goto_0

    .line 2926
    :catch_0
    move-exception v0

    .line 2927
    const-string v1, "ContactsProvider"

    const-string v3, "Could not process stream item photo for insert"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p2, v2

    .line 2928
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 8159
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 8160
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_0

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5132
    if-nez p1, :cond_1

    move v1, v2

    .line 5139
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 5136
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 5137
    aget-object v3, p1, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 5136
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private c(JZ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3924
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3926
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3927
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->l(J)V

    .line 3929
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3930
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "deleted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3931
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3932
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "aggregation_needed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3933
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3934
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "dirty"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3935
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->a(JLandroid/content/ContentValues;Z)I

    move-result v0

    return v0
.end method

.method private c(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3909
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 3910
    invoke-direct {p0, v0, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 3913
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_item_photos"

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/providers/contacts/ContactsProvider2;)I
    .locals 1
    .parameter

    .prologue
    .line 184
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sU:I

    return v0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 6669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6670
    const-string v0, "_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 6671
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6672
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6673
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    if-ne v2, v9, :cond_0

    .line 6674
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vU:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6675
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6671
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6678
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6679
    const-string v0, ") AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6681
    const-string v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupByRawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6684
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6685
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6687
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6688
    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactLookupKey;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6690
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v1, v8

    .line 6691
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 6692
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6693
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    if-ne v5, v9, :cond_3

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vS:I

    if-ne v3, v5, :cond_3

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vU:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6696
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6702
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6691
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6702
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6705
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method static c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x26

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 8168
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 8169
    if-nez v2, :cond_0

    move-object v0, v1

    .line 8214
    :goto_0
    return-object v0

    .line 8173
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 8174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 8177
    const/4 v0, 0x0

    .line 8179
    :cond_1
    :goto_1
    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 8180
    if-ne v0, v7, :cond_2

    move-object v0, v1

    .line 8181
    goto :goto_0

    .line 8186
    :cond_2
    if-lez v0, :cond_3

    .line 8187
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 8188
    const/16 v6, 0x3f

    if-eq v5, v6, :cond_3

    if-eq v5, v8, :cond_3

    .line 8190
    add-int/2addr v0, v4

    .line 8191
    goto :goto_1

    .line 8195
    :cond_3
    add-int/2addr v0, v4

    .line 8197
    if-ne v3, v0, :cond_4

    move-object v0, v1

    .line 8198
    goto :goto_0

    .line 8201
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    .line 8202
    add-int/lit8 v0, v0, 0x1

    .line 8207
    invoke-virtual {v2, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 8208
    if-ne v1, v7, :cond_5

    .line 8209
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8214
    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8211
    :cond_5
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private c(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 7153
    const-string v0, "view_stream_items"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 7154
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tX:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 7155
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 7252
    const-string v0, "account_name"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7253
    const-string v0, "account_type"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7254
    const-string v0, "data_set"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v0, v4

    .line 7257
    if-eqz v0, :cond_0

    .line 7259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v0, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7265
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 7266
    :goto_0
    if-eqz v0, :cond_3

    .line 7267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7271
    if-nez v3, :cond_2

    .line 7272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7277
    :goto_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 7281
    :goto_2
    return-void

    .line 7265
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 7274
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND data_set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 7279
    :cond_3
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private c(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7224
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contact_presence"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "contact_chat_capability"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN agg_presence ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "agg_presence.presence_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7230
    :cond_0
    return-void
.end method

.method private c(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2069
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->l(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2082
    :goto_0
    return v0

    .line 2072
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2073
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2074
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->to:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2075
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2076
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2077
    invoke-static {v2, v3}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2078
    goto :goto_0

    .line 2082
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 6769
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 6770
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6771
    iget v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    if-ne v0, p2, :cond_1

    .line 6772
    const/4 v2, 0x1

    .line 6776
    :cond_0
    return v2

    .line 6769
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8066
    if-nez p1, :cond_0

    .line 8067
    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v2

    .line 8073
    :goto_0
    return-object v0

    .line 8069
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 8070
    new-array v0, v0, [Ljava/lang/String;

    .line 8071
    aput-object p2, v0, v2

    .line 8072
    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private d(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4201
    const/4 v0, 0x0

    .line 4202
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->z(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 4203
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4204
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "status_updates"

    invoke-direct {p0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4211
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->A(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 4212
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4213
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "presence"

    invoke-virtual {v0, v2, v1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4218
    :cond_1
    return v0
.end method

.method private d(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3873
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    if-eqz v0, :cond_0

    .line 3874
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting data from status_updates for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "status_updates"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3878
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presence"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 6726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6727
    const-string v0, "normalized_name IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 6728
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 6729
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6730
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    if-eq v2, v9, :cond_0

    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    if-ne v2, v10, :cond_1

    .line 6732
    :cond_0
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6733
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6728
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6736
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6737
    const-string v0, ") AND name_type=2 AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6740
    const-string v1, "name_lookup INNER JOIN view_raw_contacts ON (name_lookup.raw_contact_id = view_raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupByDisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6743
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6744
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6746
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6747
    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactLookupKey;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6749
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v1, v8

    .line 6750
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 6751
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6752
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    if-eq v5, v9, :cond_4

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    if-ne v5, v10, :cond_5

    :cond_4
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vS:I

    if-ne v3, v5, :cond_5

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6756
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6762
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6750
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6762
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6765
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private d(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2578
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2579
    const-string v0, "account_type"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2580
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v0, v4

    .line 2582
    const-string v4, "account_name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2583
    const-string v4, "account_type"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2584
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v7, v8

    .line 2587
    if-nez v0, :cond_0

    if-eqz v7, :cond_1

    .line 2589
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2595
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2596
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v1

    .line 2598
    :goto_1
    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    .line 2600
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2602
    :goto_2
    if-nez v1, :cond_5

    .line 2603
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "When both specified, ACCOUNT_NAME and ACCOUNT_TYPE must match"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v2

    .line 2595
    goto :goto_0

    :cond_3
    move v7, v2

    .line 2596
    goto :goto_1

    :cond_4
    move v1, v2

    .line 2600
    goto :goto_2

    :cond_5
    move-object v0, v3

    move-object v1, v5

    .line 2618
    :goto_3
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2621
    :cond_6
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    .line 2624
    :cond_7
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    :goto_4
    return-object v0

    .line 2606
    :cond_8
    if-eqz v0, :cond_9

    .line 2608
    const-string v0, "account_name"

    invoke-virtual {p2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    const-string v0, "account_type"

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v1, v5

    goto :goto_3

    .line 2610
    :cond_9
    if-eqz v7, :cond_a

    move-object v0, v4

    move-object v1, v6

    .line 2612
    goto :goto_3

    .line 2614
    :cond_a
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static synthetic d(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uu:Lcom/android/providers/contacts/PhotoStore;

    return-object v0
.end method

.method private d(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 7158
    const-string v0, "photo_files JOIN stream_item_photos ON (stream_item_photos.photo_file_id=photo_files._id) JOIN stream_items ON (stream_item_photos.stream_item_id=stream_items._id) JOIN raw_contacts ON (stream_items.raw_contact_id=raw_contacts._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 7168
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tY:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 7169
    return-void
.end method

.method private d(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7234
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "chat_capability"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN presence ON (presence_data_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7238
    :cond_0
    return-void
.end method

.method private d([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 8078
    if-nez p1, :cond_0

    .line 8079
    const/4 v0, 0x0

    .line 8085
    :goto_0
    return-object v0

    .line 8081
    :cond_0
    array-length v1, p1

    .line 8082
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 8083
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8084
    aput-object p2, v0, v1

    goto :goto_0
.end method

.method private e(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4224
    const-string v0, "raw_contact_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4227
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 4228
    invoke-direct {p0, v0, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 4231
    const-string v0, "account_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4232
    const-string v0, "account_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4235
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private e(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/providers/contacts/AccountWithDataSet;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2634
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v2

    .line 2635
    const/4 v0, 0x0

    .line 2636
    if-eqz v2, :cond_0

    .line 2637
    const-string v0, "data_set"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2638
    if-nez v0, :cond_1

    .line 2639
    const-string v0, "data_set"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2643
    :goto_0
    new-instance v1, Lcom/android/providers/contacts/AccountWithDataSet;

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 2645
    :cond_0
    return-object v0

    .line 2641
    :cond_1
    const-string v1, "data_set"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ut:Lcom/android/providers/contacts/PhotoStore;

    return-object v0
.end method

.method private f(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4241
    const-string v0, "stream_item_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4244
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 4245
    invoke-direct {p0, v0, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 4249
    const-string v0, "account_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4250
    const-string v0, "account_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4253
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/content/ContentValues;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4255
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_item_photos"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2828
    .line 2829
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2830
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2832
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2835
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 2836
    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/accounts/Account;J)V

    .line 2839
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v3, "account_name"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2840
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v3, "account_type"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2843
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "stream_items"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 2844
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 2846
    const-wide/16 v0, 0x0

    .line 2854
    :goto_0
    return-wide v0

    .line 2852
    :cond_0
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->k(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private f(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .parameter

    .prologue
    .line 5044
    instance-of v0, p1, Landroid/database/AbstractCursor;

    if-eqz v0, :cond_1

    .line 5045
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 5046
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5047
    if-eqz v0, :cond_0

    .line 5048
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 5050
    :cond_0
    const-string v0, "deferred_snippeting"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, p1

    .line 5051
    check-cast v0, Landroid/database/AbstractCursor;

    invoke-virtual {v0, v1}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    .line 5053
    :cond_1
    return-object p1
.end method

.method static synthetic f(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/lang/ThreadLocal;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private fF()Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 1445
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1448
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1449
    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->sT:I

    .line 1451
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sU:I

    .line 1454
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 1455
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1458
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "contacts"

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V

    .line 1460
    new-instance v0, Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ContactDirectoryManager;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ui:Lcom/android/providers/contacts/ContactDirectoryManager;

    .line 1461
    new-instance v0, Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/GlobalSearchSupport;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->rK:Lcom/android/providers/contacts/GlobalSearchSupport;

    .line 1464
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uG:Ljava/util/concurrent/CountDownLatch;

    .line 1465
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    .line 1467
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsProviderWorker"

    invoke-direct {v0, v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uO:Landroid/os/HandlerThread;

    .line 1469
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uO:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1470
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$1;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uO:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactsProvider2$1;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uP:Landroid/os/Handler;

    .line 1478
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fM()Lcom/android/providers/contacts/ProfileProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    .line 1479
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "contacts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProfileProvider;->a(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V

    .line 1480
    new-instance v0, Landroid/content/pm/ProviderInfo;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 1481
    const-string v1, "android.permission.READ_PROFILE"

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 1482
    const-string v1, "android.permission.WRITE_PROFILE"

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 1483
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/ProfileProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 1484
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProfileProvider;->c(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    .line 1487
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contacts_preauth_uri_expiration"

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uy:J

    .line 1492
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 1493
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 1494
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 1495
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 1496
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 1497
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 1498
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 1499
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 1500
    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 1502
    return v4
.end method

.method private fG()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1509
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1510
    new-instance v0, Lcom/android/providers/contacts/LegacyApiSupport;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->rK:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {v0, v6, v1, p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/GlobalSearchSupport;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uB:Lcom/android/providers/contacts/LegacyApiSupport;

    .line 1512
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uM:Ljava/util/Locale;

    .line 1513
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aO()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ix:Lcom/android/providers/contacts/NameSplitter;

    .line 1514
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ix:Lcom/android/providers/contacts/NameSplitter;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ir:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 1515
    new-instance v0, Lcom/android/providers/contacts/PostalSplitter;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uM:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/PostalSplitter;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uh:Lcom/android/providers/contacts/PostalSplitter;

    .line 1516
    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->I:Lcom/android/providers/contacts/CommonNicknameCache;

    .line 1517
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->ej()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uM:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->setLocale(Ljava/util/Locale;)V

    .line 1518
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->g(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->ix:Lcom/android/providers/contacts/NameSplitter;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->I:Lcom/android/providers/contacts/CommonNicknameCache;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    .line 1520
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    const-string v1, "sync.contacts.aggregate"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 1521
    new-instance v0, Lcom/android/providers/contacts/ProfileAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->g(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->ix:Lcom/android/providers/contacts/NameSplitter;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->I:Lcom/android/providers/contacts/CommonNicknameCache;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ProfileAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ur:Lcom/android/providers/contacts/ContactAggregator;

    .line 1523
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ur:Lcom/android/providers/contacts/ContactAggregator;

    const-string v1, "sync.contacts.aggregate"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 1524
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/SearchIndexManager;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uC:Lcom/android/providers/contacts/SearchIndexManager;

    .line 1526
    new-instance v0, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/PhotoStore;-><init>(Ljava/io/File;Lcom/android/providers/contacts/ContactsDatabaseHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ut:Lcom/android/providers/contacts/PhotoStore;

    .line 1527
    new-instance v0, Lcom/android/providers/contacts/PhotoStore;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "profile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/PhotoStore;-><init>(Ljava/io/File;Lcom/android/providers/contacts/ContactsDatabaseHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uu:Lcom/android/providers/contacts/PhotoStore;

    .line 1530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ul:Ljava/util/HashMap;

    .line 1531
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ul:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->ut:Lcom/android/providers/contacts/PhotoStore;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/Map;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V

    .line 1533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->um:Ljava/util/HashMap;

    .line 1534
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->um:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->ur:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uu:Lcom/android/providers/contacts/PhotoStore;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/Map;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V

    .line 1538
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fW()V

    .line 1539
    return-void
.end method

.method private fI()V
    .locals 3

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1726
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1727
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1728
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1730
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fG()V

    .line 1731
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1732
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1734
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1735
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1738
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fH()V

    .line 1739
    return-void

    .line 1734
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1735
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private fK()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1750
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    if-eq v0, v7, :cond_0

    .line 1772
    :goto_0
    return-void

    .line 1757
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uN:I

    if-nez v0, :cond_2

    .line 1758
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "contacts"

    invoke-static {v0, v1, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 1760
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "contacts"

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 1764
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 1765
    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    goto :goto_0

    .line 1767
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    goto :goto_0

    .line 1770
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    goto :goto_0
.end method

.method private fP()Z
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uk:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1918
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fS()V
    .locals 3

    .prologue
    .line 1935
    const-string v0, "ContactsProvider"

    const-string v1, "Importing legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    .line 1938
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1939
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uM:Ljava/util/Locale;

    invoke-virtual {v1, p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 1940
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uM:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1942
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fR()Lcom/android/providers/contacts/LegacyContactImporter;

    move-result-object v0

    .line 1943
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Lcom/android/providers/contacts/LegacyContactImporter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fT()V

    .line 1948
    :goto_0
    return-void

    .line 1946
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fU()V

    goto :goto_0
.end method

.method private fT()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1954
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1956
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1959
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "contacts_imported_v1"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    .line 1962
    const-string v0, "ContactsProvider"

    const-string v1, "Completed import of legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    return-void
.end method

.method private fU()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1969
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1970
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1974
    new-instance v2, Landroid/app/Notification;

    const v3, 0x1080078

    const v4, 0x7f040004

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1977
    const v3, 0x7f040005

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040006

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1981
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x22

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 1983
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1985
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    .line 1986
    const-string v0, "ContactsProvider"

    const-string v1, "Failed to import legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iput-boolean v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->uJ:Z

    .line 1990
    return-void
.end method

.method private fX()V
    .locals 3

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->eJ()Ljava/util/Set;

    move-result-object v1

    .line 2342
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->eI()Ljava/util/Set;

    move-result-object v0

    .line 2343
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2344
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uC:Lcom/android/providers/contacts/SearchIndexManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/providers/contacts/SearchIndexManager;->b(Ljava/util/Set;Ljava/util/Set;)V

    .line 2345
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->eL()V

    .line 2347
    :cond_1
    return-void
.end method

.method private fY()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2350
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    if-eqz v0, :cond_0

    .line 2351
    const-string v0, "ContactsProvider"

    const-string v1, "flushTransactionChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->eF()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2355
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2356
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)J

    goto :goto_0

    .line 2360
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->eH()Ljava/util/Set;

    move-result-object v0

    .line 2361
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2362
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2363
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v2, "UPDATE raw_contacts SET dirty=1 WHERE _id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 2365
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2369
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->eG()Ljava/util/Set;

    move-result-object v0

    .line 2370
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2371
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2372
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v2, "UPDATE raw_contacts SET version = version + 1 WHERE _id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 2374
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2375
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2379
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->eK()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2380
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2381
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v5

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v1, v3, v4, v0}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 2382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to update sync state, does it still exist?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2387
    :cond_5
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->clear()V

    .line 2388
    return-void
.end method

.method private g(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4347
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4348
    const-string v1, "ungrouped_visible"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4349
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    .line 4351
    :cond_0
    return v0
.end method

.method private g(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 2867
    .line 2868
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2869
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v2, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2871
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v3, "stream_item_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2872
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 2873
    invoke-direct {p0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->N(J)J

    move-result-wide v2

    .line 2876
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v4

    .line 2877
    invoke-direct {p0, v4, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/accounts/Account;J)V

    .line 2881
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2882
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2885
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/content/ContentValues;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2887
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_item_photos"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2890
    :cond_0
    return-wide v0
.end method

.method static synthetic g(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/CommonNicknameCache;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->I:Lcom/android/providers/contacts/CommonNicknameCache;

    return-object v0
.end method

.method private h(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 3263
    const-string v0, "account_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3264
    const-string v0, "account_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3265
    const-string v0, "data_set"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3266
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3267
    if-eqz v8, :cond_0

    .line 3268
    const-string v1, "account_name"

    invoke-virtual {v0, v1, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3270
    :cond_0
    if-eqz v9, :cond_1

    .line 3271
    const-string v1, "account_type"

    invoke-virtual {v0, v1, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3273
    :cond_1
    if-eqz v10, :cond_2

    .line 3274
    const-string v1, "data_set"

    invoke-virtual {v0, v1, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3276
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v3

    .line 3278
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 3282
    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    .line 3283
    const-string v0, "account_name=? AND account_type=?"

    .line 3284
    if-nez v10, :cond_4

    .line 3285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3286
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v8, v2, v1

    const/4 v1, 0x1

    aput-object v9, v2, v1

    .line 3292
    :goto_0
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->g(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 3295
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3305
    :cond_3
    :goto_1
    return-wide v0

    .line 3288
    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND data_set=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3289
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v8, v2, v1

    const/4 v1, 0x1

    aput-object v9, v2, v1

    const/4 v1, 0x2

    aput-object v10, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3295
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3299
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3301
    const-string v2, "ungrouped_visible"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3302
    iput-boolean v11, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method

.method private i([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter

    .prologue
    .line 6162
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "number"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "call_date"

    aput-object v3, v4, v2

    .line 6167
    const/4 v2, 0x2

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const-string v3, "date"

    aput-object v3, v10, v2

    .line 6172
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 6173
    new-instance v11, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 6175
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "call_date DESC LIMIT 50"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 6178
    if-nez v3, :cond_c

    .line 6179
    :try_start_1
    new-instance v9, Landroid/database/MatrixCursor;

    invoke-direct {v9, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6181
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_RECENT_RECIPIENTS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC LIMIT 50"

    move-object v4, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 6184
    if-nez v3, :cond_0

    .line 6185
    :try_start_3
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v2

    .line 6188
    :cond_0
    const/4 v2, -0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 6189
    const/4 v2, -0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 6190
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 6191
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 6193
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6194
    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6195
    const/4 v6, 0x1

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 6197
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6198
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6199
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 6202
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-wide v14, v4

    move-object v4, v8

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    move-wide v5, v14

    .line 6204
    :cond_3
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11}, Landroid/database/MatrixCursor;->getCount()I

    move-result v12

    const/16 v13, 0x32

    if-ge v12, v13, :cond_5

    .line 6205
    cmp-long v12, v7, v5

    if-lez v12, :cond_4

    .line 6206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v10, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 6207
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 6208
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6209
    const/4 v7, 0x1

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_1

    .line 6212
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v10, v2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 6213
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 6214
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6215
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_1

    .line 6220
    :cond_5
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v11}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    const/16 v6, 0x32

    if-ge v5, v6, :cond_6

    .line 6221
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v10, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 6222
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6223
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 6227
    :cond_6
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v11}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_7

    .line 6228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v10, v2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/MatrixCursor;Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 6229
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6230
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v2

    goto :goto_3

    .line 6234
    :cond_7
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 6235
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6237
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 6238
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 6241
    :cond_9
    return-object v11

    .line 6234
    :catchall_0
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    :goto_4
    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_a

    .line 6235
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 6237
    :cond_a
    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_b

    .line 6238
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 6234
    :catchall_1
    move-exception v2

    move-object v4, v3

    move-object v3, v8

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v4, v9

    goto :goto_4

    :cond_c
    move-object v9, v3

    goto/16 :goto_0
.end method

.method private i(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2762
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2763
    const-string v0, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2764
    const-string v0, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2765
    const-string v2, "mimetype_id"

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2767
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2768
    return-void
.end method

.method private j(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2771
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2775
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data"

    const-string v3, "mimetype_id=? AND data1=? AND raw_contact_id=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2776
    return-void
.end method

.method private j([Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 8430
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "snippet"

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private k(JJ)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 3088
    .line 3089
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "raw_contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v7, "timestamp DESC, _id DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3093
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3094
    if-gt v0, v8, :cond_0

    .line 3110
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3112
    :goto_0
    return-wide p3

    .line 3098
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-wide v0, p3

    .line 3099
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-lt v3, v8, :cond_2

    .line 3100
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3101
    cmp-long v3, p3, v3

    if-nez v3, :cond_1

    .line 3103
    const-wide/16 v0, 0x0

    .line 3105
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->P(J)I

    .line 3106
    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3110
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-wide p3, v0

    .line 3112
    goto :goto_0
.end method

.method private l(Landroid/net/Uri;)Z
    .locals 1
    .parameter

    .prologue
    .line 2054
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private m(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .parameter

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uA:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2213
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "perm_token"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uy:J

    add-long/2addr v1, v3

    .line 2217
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uz:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    return-object v0
.end method

.method private o(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 2959
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tp:Ljava/util/List;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->n(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2961
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SOCIAL_STREAM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    :cond_0
    return-void
.end method

.method private p(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 2972
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tp:Ljava/util/List;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2973
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SOCIAL_STREAM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    :cond_0
    return-void
.end method

.method private q(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 7327
    const-string v1, "limit"

    invoke-static {p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7328
    if-nez v1, :cond_0

    .line 7341
    :goto_0
    return-object v0

    .line 7333
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7334
    if-gez v2, :cond_1

    .line 7335
    const-string v2, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid limit parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7339
    :catch_0
    move-exception v2

    .line 7340
    const-string v2, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid limit parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7338
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private s(Landroid/net/Uri;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 8285
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8286
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 8287
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8289
    array-length v7, v4

    move v0, v6

    :goto_0
    if-ge v0, v7, :cond_0

    aget-object v8, v4, v0

    .line 8290
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8293
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8294
    const-string v0, "ContactsProvider"

    const-string v1, "Method for data usage feedback isn\'t specified. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v6

    .line 8301
    :goto_1
    array-length v0, v4

    new-array v0, v0, [Ljava/lang/String;

    .line 8302
    const-string v1, "?"

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8304
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "view_data"

    new-array v2, v2, [Ljava/lang/String;

    const-string v7, "contact_id"

    aput-object v7, v2, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8309
    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8310
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 8311
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 8312
    const-string v0, "last_time_contacted"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8313
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "contacts"

    const-string v4, "_id=?"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8315
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE _id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8316
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE raw_contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE contact_id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 8319
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 8297
    :cond_1
    invoke-virtual {p0, v3, v1, v9, v10}, Lcom/android/providers/contacts/ContactsProvider2;->updateDataUsageStat(Ljava/util/List;Ljava/lang/String;J)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    :goto_3
    move v8, v0

    goto/16 :goto_1

    :cond_2
    move v0, v6

    goto :goto_3

    .line 8319
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8322
    return v8
.end method

.method private t(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 8386
    const-string v0, "name_for_primary_account"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8388
    const-string v1, "type_for_primary_account"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8394
    const-string v3, "(CASE WHEN account_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8395
    invoke-static {v2, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 8396
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8397
    const-string v0, " AND account_type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8398
    invoke-static {v2, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 8400
    :cond_0
    const-string v0, " THEN 0 ELSE 1 END)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8403
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 8412
    const-string v0, "deferred_snippeting"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w(Landroid/content/ContentValues;)J
    .locals 2
    .parameter

    .prologue
    .line 2655
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Aggregate contacts are created automatically"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private x(Landroid/content/ContentValues;)V
    .locals 2
    .parameter

    .prologue
    .line 2662
    if-nez p1, :cond_1

    .line 2674
    :cond_0
    :goto_0
    return-void

    .line 2666
    :cond_1
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2667
    const-string v1, "account_type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2670
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2671
    const-string v0, "account_name"

    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    const-string v0, "account_type"

    const-string v1, "com.android.contacts.default"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private z(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 4273
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4274
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "status"

    const-string v2, "status"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4276
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "status_ts"

    const-string v2, "status_ts"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4278
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "status_res_package"

    const-string v2, "status_res_package"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4280
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "status_label"

    const-string v2, "status_label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4282
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "status_icon"

    const-string v2, "status_icon"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4284
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    return-object v0
.end method


# virtual methods
.method public a(JJZ)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 3819
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->dU()V

    .line 3820
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->uF:Z

    .line 3823
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "raw_contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3828
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3829
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->P(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3832
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3835
    if-nez p5, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->O(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3836
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presence_raw_contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3838
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 3840
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->f(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 3841
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3842
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->l(J)V

    :cond_2
    move v0, v2

    .line 3847
    :goto_1
    return v0

    .line 3846
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->e(J)V

    .line 3847
    invoke-direct {p0, p1, p2, p5}, Lcom/android/providers/contacts/ContactsProvider2;->c(JZ)I

    move-result v0

    goto :goto_1
.end method

.method public a(J[Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3152
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 3153
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3157
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3177
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_0
    return v0

    .line 3161
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v0, v6

    .line 3163
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 3164
    aget-object v3, p3, v0

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v6, v7

    .line 3170
    :cond_1
    if-nez v6, :cond_3

    .line 3171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data type mismatch: expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3177
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3174
    :cond_3
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->aa(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v3

    .line 3175
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 3177
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;JZ)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3771
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->gH:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3772
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v1

    .line 3774
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3779
    if-eqz p4, :cond_0

    .line 3780
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3789
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    :goto_0
    return v0

    .line 3782
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3783
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3784
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v1, "dirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3785
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 3789
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    throw v0
.end method

.method protected a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3941
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    if-eqz v0, :cond_0

    .line 3942
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInTransaction: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3947
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3952
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3953
    const/16 v1, 0x2af9

    if-ne v0, v1, :cond_3

    if-nez p3, :cond_3

    .line 3954
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3955
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 3956
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/TransactionContext;->b(JLjava/lang/Object;)V

    .line 4194
    :cond_2
    :goto_0
    return v6

    .line 3959
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fY()V

    .line 3960
    const-string v1, "caller_is_syncadapter"

    invoke-static {p1, v1, v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    .line 3962
    sparse-switch v0, :sswitch_data_0

    .line 4189
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 4190
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uB:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 3965
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2, p4}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 3969
    :sswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3973
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, p2, v1, p4}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 3970
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3978
    :sswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3982
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, p2, v1, p4}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 3979
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3988
    :sswitch_3
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_0

    .line 3993
    :sswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/providers/contacts/ContactsProvider2;->b(JLandroid/content/ContentValues;Z)I

    move-result v6

    goto/16 :goto_0

    .line 3999
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 4000
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4001
    if-ge v1, v4, :cond_6

    .line 4002
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Missing a lookup key"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4005
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4006
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 4007
    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/providers/contacts/ContactsProvider2;->b(JLandroid/content/ContentValues;Z)I

    move-result v6

    goto/16 :goto_0

    .line 4013
    :sswitch_6
    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_7

    move v0, v6

    .line 4014
    :goto_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_8

    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 4018
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 4013
    goto :goto_3

    .line 4015
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 4025
    :sswitch_7
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 4027
    if-lez v0, :cond_12

    .line 4028
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v5, :cond_9

    :goto_5
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move v6, v0

    goto/16 :goto_0

    :cond_9
    move v6, v7

    goto :goto_5

    .line 4034
    :sswitch_8
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 4035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_a

    const-string v0, ""

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 4039
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 4040
    if-lez v0, :cond_12

    .line 4041
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v5, :cond_b

    :goto_7
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move v6, v0

    goto/16 :goto_0

    .line 4035
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_b
    move v6, v7

    .line 4041
    goto :goto_7

    :sswitch_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4050
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 4051
    if-lez v0, :cond_12

    .line 4052
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v5, :cond_c

    :goto_8
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move v6, v0

    goto/16 :goto_0

    :cond_c
    move v6, v7

    goto :goto_8

    .line 4059
    :sswitch_a
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4060
    invoke-direct {p0, p2, v0, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_0

    .line 4065
    :sswitch_b
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 4066
    if-eqz p3, :cond_d

    .line 4067
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=? AND("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_0

    .line 4072
    :cond_d
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 4073
    const-string v0, "_id=?"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_0

    .line 4080
    :sswitch_c
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 4082
    if-lez v0, :cond_12

    .line 4083
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v5, :cond_e

    :goto_9
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move v6, v0

    goto/16 :goto_0

    :cond_e
    move v6, v7

    goto :goto_9

    .line 4089
    :sswitch_d
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 4090
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_f

    const-string v0, ""

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4093
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 4095
    if-lez v0, :cond_12

    .line 4096
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v5, :cond_10

    :goto_b
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move v6, v0

    goto/16 :goto_0

    .line 4091
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_10
    move v6, v7

    .line 4096
    goto :goto_b

    .line 4102
    :sswitch_e
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v6

    goto/16 :goto_0

    .line 4107
    :sswitch_f
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/providers/contacts/ContactsProvider2;->g(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4109
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v5, :cond_11

    :goto_c
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move v6, v0

    .line 4110
    goto/16 :goto_0

    :cond_11
    move v6, v7

    .line 4109
    goto :goto_c

    .line 4115
    :sswitch_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 4120
    :sswitch_11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->e(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 4125
    :sswitch_12
    const-string v0, "_id=?"

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->e(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 4131
    :sswitch_13
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4132
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 4133
    const-string v3, "raw_contact_id=? AND _id=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v7

    aput-object v1, v2, v6

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/providers/contacts/ContactsProvider2;->e(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 4140
    :sswitch_14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->f(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 4145
    :sswitch_15
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4146
    const-string v1, "stream_item_id=?"

    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->f(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 4152
    :sswitch_16
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4153
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4154
    const-string v3, "stream_item_photos._id=? AND stream_item_photos.stream_item_id=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v7

    aput-object v0, v2, v6

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/providers/contacts/ContactsProvider2;->f(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 4162
    :sswitch_17
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ui:Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactDirectoryManager;->A(I)V

    goto/16 :goto_0

    .line 4168
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->s(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    move v6, v7

    .line 4173
    goto/16 :goto_0

    .line 4178
    :sswitch_19
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4179
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    .line 4182
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4184
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V

    move v6, v7

    .line 4185
    goto/16 :goto_0

    :cond_12
    move v6, v0

    goto/16 :goto_0

    .line 3962
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_5
        0x7d2 -> :sswitch_a
        0x7d3 -> :sswitch_b
        0x7d4 -> :sswitch_6
        0x7d8 -> :sswitch_13
        0xbb8 -> :sswitch_7
        0xbb9 -> :sswitch_9
        0xbbb -> :sswitch_9
        0xbbe -> :sswitch_9
        0xbc2 -> :sswitch_9
        0xbc8 -> :sswitch_8
        0x1770 -> :sswitch_e
        0x1b58 -> :sswitch_10
        0x2328 -> :sswitch_f
        0x2710 -> :sswitch_c
        0x2711 -> :sswitch_d
        0x2af8 -> :sswitch_0
        0x2af9 -> :sswitch_1
        0x2afa -> :sswitch_0
        0x2afb -> :sswitch_2
        0x2ee4 -> :sswitch_19
        0x4269 -> :sswitch_17
        0x4a38 -> :sswitch_3
        0x4a3a -> :sswitch_7
        0x4a3d -> :sswitch_a
        0x4a3f -> :sswitch_6
        0x4a41 -> :sswitch_10
        0x4e21 -> :sswitch_18
        0x5208 -> :sswitch_11
        0x5209 -> :sswitch_14
        0x520a -> :sswitch_12
        0x520b -> :sswitch_15
        0x520c -> :sswitch_16
    .end sparse-switch
.end method

.method protected a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3555
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    if-eqz v0, :cond_0

    .line 3556
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3561
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3564
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fY()V

    .line 3565
    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v9

    .line 3567
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3568
    sparse-switch v0, :sswitch_data_0

    .line 3764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3765
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uB:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 3571
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3575
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3578
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, v1, p3}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3575
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3583
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3586
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, v1, p3}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3583
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3592
    :sswitch_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3596
    :sswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3597
    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->b(JZ)I

    move-result v0

    goto/16 :goto_0

    .line 3601
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 3602
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3603
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 3604
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Missing a lookup key"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3607
    :cond_4
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3608
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3609
    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->b(JZ)I

    move-result v0

    goto/16 :goto_0

    .line 3614
    :sswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 3615
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3616
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3617
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3618
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 3620
    if-nez p3, :cond_5

    .line 3621
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 3626
    :goto_3
    const/4 v1, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 3627
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 3628
    const-string v0, "_id=? AND lookup=?"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3629
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3632
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 3634
    invoke-direct {p0, v10, v11, v9}, Lcom/android/providers/contacts/ContactsProvider2;->b(JZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3641
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3623
    :cond_5
    array-length v1, p3

    add-int/lit8 v1, v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 3624
    const/4 v1, 0x0

    const/4 v3, 0x2

    array-length v4, p3

    invoke-static {p3, v1, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 3638
    :cond_6
    const/4 v0, 0x0

    .line 3641
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3647
    :sswitch_7
    const/4 v8, 0x0

    .line 3648
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move v6, v8

    .line 3652
    :goto_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3653
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3654
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object v0, p0

    move v5, v9

    .line 3655
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(JJZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v6, v0

    .line 3657
    goto :goto_4

    .line 3659
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 3661
    goto/16 :goto_0

    .line 3659
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3666
    :sswitch_8
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3667
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v3

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(JJZ)I

    move-result v0

    goto/16 :goto_0

    .line 3673
    :sswitch_9
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_8

    const/4 v0, 0x1

    :goto_5
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3674
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 3673
    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    .line 3683
    :sswitch_a
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3684
    iget-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_9

    const/4 v0, 0x1

    :goto_6
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3685
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 3686
    const-string v0, "_id=?"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->dh:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_0

    .line 3684
    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    .line 3690
    :sswitch_b
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_a

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3691
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;JZ)I

    move-result v0

    goto/16 :goto_0

    .line 3690
    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    .line 3695
    :sswitch_c
    const/4 v8, 0x0

    .line 3696
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move v1, v8

    .line 3699
    :goto_8
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3700
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0, p1, v3, v4, v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;JZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    add-int/2addr v1, v0

    goto :goto_8

    .line 3703
    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3705
    if-lez v1, :cond_c

    .line 3706
    iget-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_d

    const/4 v0, 0x1

    :goto_9
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    :cond_c
    move v0, v1

    .line 3708
    goto/16 :goto_0

    .line 3703
    :catchall_2
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3706
    :cond_d
    const/4 v0, 0x0

    goto :goto_9

    .line 3712
    :sswitch_d
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_e

    const/4 v0, 0x1

    :goto_a
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3713
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3712
    :cond_e
    const/4 v0, 0x0

    goto :goto_a

    .line 3718
    :sswitch_e
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->d(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3722
    :sswitch_f
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_f

    const/4 v0, 0x1

    :goto_b
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3723
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3722
    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    .line 3727
    :sswitch_10
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_10

    const/4 v0, 0x1

    :goto_c
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3728
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3727
    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    .line 3734
    :sswitch_11
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_11

    const/4 v0, 0x1

    :goto_d
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3735
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3736
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 3737
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "raw_contact_id=? AND _id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3734
    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    .line 3744
    :sswitch_12
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_12

    const/4 v0, 0x1

    :goto_e
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3745
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream_item_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_13

    const-string v0, ""

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3749
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3744
    :cond_12
    const/4 v0, 0x0

    goto :goto_e

    .line 3746
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 3754
    :sswitch_13
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v9, :cond_14

    const/4 v0, 0x1

    :goto_10
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 3755
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3756
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3757
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "stream_item_photos._id=? AND stream_item_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3754
    :cond_14
    const/4 v0, 0x0

    goto :goto_10

    .line 3568
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_6
        0x7d2 -> :sswitch_7
        0x7d3 -> :sswitch_8
        0x7d8 -> :sswitch_11
        0xbb8 -> :sswitch_9
        0xbb9 -> :sswitch_a
        0xbbb -> :sswitch_a
        0xbbe -> :sswitch_a
        0xbc2 -> :sswitch_a
        0x1b58 -> :sswitch_e
        0x2328 -> :sswitch_d
        0x2710 -> :sswitch_c
        0x2711 -> :sswitch_b
        0x2af8 -> :sswitch_0
        0x2af9 -> :sswitch_1
        0x2afa -> :sswitch_0
        0x2afb -> :sswitch_2
        0x4a3a -> :sswitch_9
        0x4a3b -> :sswitch_a
        0x4a3d -> :sswitch_7
        0x4a3e -> :sswitch_8
        0x4a41 -> :sswitch_e
        0x5208 -> :sswitch_f
        0x520a -> :sswitch_10
        0x520b -> :sswitch_12
        0x520c -> :sswitch_13
    .end sparse-switch
.end method

.method protected a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5144
    sget-boolean v4, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    if-eqz v4, :cond_0

    .line 5145
    const-string v4, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5153
    :cond_1
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5154
    const/4 v12, 0x0

    .line 5155
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->q(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 5156
    const/16 v20, 0x0

    .line 5159
    const/16 v19, 0x0

    .line 5161
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 5162
    sparse-switch v22, :sswitch_data_0

    .line 6142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/ContactsProvider2;->uB:Lcom/android/providers/contacts/LegacyApiSupport;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v13}, Lcom/android/providers/contacts/LegacyApiSupport;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 6158
    :cond_2
    :goto_0
    return-object v4

    .line 5165
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 5169
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5170
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;J)Z

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 6146
    :goto_1
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 6148
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v5, p0

    move-object/from16 v7, v21

    move-object/from16 v8, p2

    invoke-direct/range {v5 .. v13}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6151
    const-string v5, "address_book_index_extras"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 6152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v5, p0

    move-object/from16 v8, v21

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 6155
    :goto_2
    if-eqz v14, :cond_2

    .line 6156
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->f(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 5175
    :sswitch_2
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 5176
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5177
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5178
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5179
    goto :goto_1

    .line 5184
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5185
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 5186
    const/4 v6, 0x3

    if-ge v5, v6, :cond_3

    .line 5187
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5191
    :cond_3
    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5192
    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 5193
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 5194
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "_id"

    const-string v17, "lookup"

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5200
    if-nez v4, :cond_2

    .line 5205
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5208
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5209
    goto/16 :goto_1

    .line 5216
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5217
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 5218
    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    .line 5219
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5222
    :cond_5
    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5223
    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    .line 5224
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 5225
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5226
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5227
    const/16 v4, 0x3f2

    move/from16 v0, v22

    if-eq v0, v4, :cond_6

    const/16 v4, 0x3f3

    move/from16 v0, v22

    if-ne v0, v4, :cond_7

    .line 5228
    :cond_6
    const-string v4, " AND _id=photo_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5230
    :cond_7
    const-string v4, " AND "

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "contact_id"

    const-string v17, "lookup"

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5234
    if-nez v4, :cond_2

    .line 5241
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    .line 5243
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5245
    const/16 v4, 0x3f2

    move/from16 v0, v22

    if-eq v0, v4, :cond_9

    const/16 v4, 0x3f3

    move/from16 v0, v22

    if-ne v0, v4, :cond_a

    .line 5246
    :cond_9
    const-string v4, " AND _id=photo_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5248
    :cond_a
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5249
    goto/16 :goto_1

    .line 5253
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5254
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5255
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5256
    const-string v4, "contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5257
    goto/16 :goto_1

    .line 5262
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5263
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 5264
    const/4 v6, 0x4

    if-ge v5, v6, :cond_b

    .line 5265
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5268
    :cond_b
    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5269
    const/4 v6, 0x5

    if-ne v5, v6, :cond_c

    .line 5270
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 5271
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5272
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "contact_id"

    const-string v17, "contact_lookup"

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5277
    if-nez v4, :cond_2

    .line 5282
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    .line 5284
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5285
    const-string v4, "contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5286
    goto/16 :goto_1

    .line 5290
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    .line 5292
    const-string v6, "view_contacts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5293
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->tH:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5294
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5296
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5297
    goto/16 :goto_1

    .line 5301
    :sswitch_8
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5302
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT \'vcards_\' || ? || \'.vcf\' AS _display_name, NULL AS _size"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 5311
    :sswitch_9
    const-string v8, ""

    .line 5312
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->u(Landroid/net/Uri;)Z

    move-result v11

    .line 5313
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_d

    .line 5314
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    :cond_d
    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v9, p6

    .line 5316
    invoke-direct/range {v4 .. v11}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 5319
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/contacts/ContactsProvider2;->ai(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->j([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_3
    move v14, v4

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v4, v19

    .line 5321
    goto/16 :goto_1

    .line 5319
    :cond_e
    const/4 v4, 0x0

    goto :goto_3

    .line 5332
    :sswitch_a
    const-string v4, "strequent_phone_only"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v11

    .line 5334
    const/16 v4, 0x3ef

    move/from16 v0, v22

    if-ne v0, v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_f

    .line 5335
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 5336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5337
    const-string v6, "_id IN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5338
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/providers/contacts/ContactsProvider2;->f(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5339
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5342
    :cond_f
    const/4 v5, 0x0

    .line 5343
    if-eqz p2, :cond_10

    .line 5344
    const-string v4, "times_used_sort"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->d([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5348
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5349
    if-eqz v11, :cond_12

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tF:Lcom/android/providers/contacts/ProjectionMap;

    :goto_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5352
    if-eqz v11, :cond_11

    .line 5353
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    const/4 v6, 0x1

    const-string v7, "has_phone_number=1"

    aput-object v7, v4, v6

    invoke-static {v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5356
    :cond_11
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 5357
    const-string v6, "starred=1"

    const-string v7, "_id"

    const/4 v8, 0x0

    const-string v9, "display_name COLLATE LOCALIZED ASC"

    const/4 v10, 0x0

    move-object/from16 v4, v21

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5362
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5363
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 5368
    if-eqz v11, :cond_13

    .line 5369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5380
    const-string v7, "data_usage_stat INNER JOIN view_data data ON (data_usage_stat.data_id=data._id AND data_usage_stat.usage_type=0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5386
    const-string v7, "contact_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1, v7}, Lcom/android/providers/contacts/ContactsProvider2;->c(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5387
    const-string v7, "status_update_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1, v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5390
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5391
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->tG:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5392
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v7

    .line 5394
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v9, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v6, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v9

    .line 5396
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p3, v6, v11

    const/4 v11, 0x1

    const-string v13, "starred=0 OR starred IS NULL"

    aput-object v13, v6, v11

    const/4 v11, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mimetype_id IN ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v6}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5401
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "times_used_sort DESC"

    const-string v10, "25"

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5416
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5420
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v5, v7, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5431
    const/4 v4, 0x0

    .line 5432
    if-eqz p4, :cond_35

    .line 5433
    move-object/from16 v0, p4

    array-length v5, v0

    .line 5434
    mul-int/lit8 v4, v5, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 5435
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5436
    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v7, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v4

    .line 5439
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5440
    if-eqz v4, :cond_2

    .line 5441
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 5349
    :cond_12
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tD:Lcom/android/providers/contacts/ProjectionMap;

    goto/16 :goto_4

    .line 5405
    :cond_13
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v6}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5406
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->tE:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5407
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    const-string v8, "(starred =0 OR starred IS NULL)"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5410
    const/4 v6, 0x0

    const-string v7, "_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "25"

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 5448
    :sswitch_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5449
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tE:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5450
    const-string v12, "_id"

    .line 5451
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 5452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "times_used DESC,display_name COLLATE LOCALIZED ASC, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 5454
    :cond_14
    const-string p5, "times_used DESC,display_name COLLATE LOCALIZED ASC"

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5456
    goto/16 :goto_1

    .line 5460
    :sswitch_c
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5461
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_30

    .line 5462
    const-string v4, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype_id=? AND data1=(SELECT groups._id FROM groups WHERE title=?)))"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 5465
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5466
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5467
    goto/16 :goto_1

    .line 5472
    :sswitch_d
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5473
    goto/16 :goto_1

    .line 5477
    :sswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5478
    goto/16 :goto_1

    .line 5482
    :sswitch_f
    const-string v4, "view_contacts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5483
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tH:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5484
    goto/16 :goto_1

    .line 5488
    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5489
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5490
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5491
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5492
    goto/16 :goto_1

    .line 5496
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5497
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5498
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5499
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5500
    const-string v4, " AND _id=photo_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5501
    goto/16 :goto_1

    .line 5505
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5506
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5507
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5508
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5509
    goto/16 :goto_1

    .line 5514
    :sswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5515
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 5516
    const/4 v6, 0x4

    if-ge v5, v6, :cond_15

    .line 5517
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5520
    :cond_15
    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5521
    const/4 v6, 0x5

    if-ne v5, v6, :cond_16

    .line 5522
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 5523
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5524
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5525
    const-string v4, " AND "

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "contact_id"

    const-string v17, "lookup"

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5531
    if-nez v4, :cond_2

    .line 5536
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5539
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5540
    goto/16 :goto_1

    .line 5544
    :sswitch_14
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5545
    goto/16 :goto_1

    .line 5549
    :sswitch_15
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5550
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5551
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5552
    goto/16 :goto_1

    .line 5556
    :sswitch_16
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "max_items"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 5557
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5562
    :sswitch_17
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5563
    goto/16 :goto_1

    .line 5567
    :sswitch_18
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5568
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5569
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5570
    const-string v4, "stream_item_photos.stream_item_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5571
    goto/16 :goto_1

    .line 5575
    :sswitch_19
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5576
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5577
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5578
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5579
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5580
    const-string v4, "stream_item_photos.stream_item_id=? AND stream_item_photos._id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5582
    goto/16 :goto_1

    .line 5586
    :sswitch_1a
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_max_dim"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "thumbnail_max_dim"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 5589
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/contacts/ContactsProvider2;->sT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/contacts/ContactsProvider2;->sU:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5594
    :sswitch_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aI()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5598
    const-string v4, "remove_duplicate_entries"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    .line 5600
    if-eqz v4, :cond_30

    .line 5601
    const-string v12, "contact_id, data1"

    .line 5610
    const-string v4, "DISTINCT contact_id||\',\'||data1"

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 5617
    :sswitch_1c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5618
    const-string v4, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5620
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_30

    .line 5621
    const-string v4, " AND contact_id IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1=?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5623
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5624
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5625
    goto/16 :goto_1

    .line 5630
    :sswitch_1d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5631
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aI()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5634
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5635
    goto/16 :goto_1

    .line 5639
    :sswitch_1e
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5640
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->ud:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5641
    if-nez v4, :cond_34

    .line 5642
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 5644
    :goto_7
    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 5645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aI()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5647
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1b

    .line 5648
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 5649
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 5650
    const-string v4, " AND ("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5652
    const/4 v5, 0x0

    .line 5653
    const/4 v4, 0x0

    .line 5654
    sget-object v8, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->vb:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    invoke-static {v6, v8}, Lcom/android/providers/contacts/SearchIndexManager;->a(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;

    move-result-object v8

    .line 5656
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_17

    .line 5657
    const-string v4, "raw_contact_id IN (SELECT raw_contacts._id FROM search_index JOIN raw_contacts ON (search_index.contact_id=raw_contacts.contact_id) WHERE name MATCH \'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5664
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5665
    const-string v4, "\')"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5666
    const/4 v4, 0x1

    .line 5667
    const/4 v5, 0x1

    .line 5670
    :cond_17
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5671
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 5672
    if-eqz v4, :cond_18

    .line 5673
    const-string v4, " OR "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5675
    :cond_18
    const-string v4, "_id IN (SELECT DISTINCT data_id FROM phone_lookup WHERE normalized_number LIKE \'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5679
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5680
    const-string v4, "%\')"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5681
    const/4 v5, 0x1

    .line 5684
    :cond_19
    if-nez v5, :cond_1a

    .line 5687
    const-string v4, "0"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5689
    :cond_1a
    const-string v4, ")"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5690
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5692
    :cond_1b
    const-string v12, "(CASE WHEN data4 IS NOT NULL THEN data4 ELSE data1 END), contact_id"

    .line 5695
    if-nez p5, :cond_30

    .line 5696
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->t(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 5697
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 5698
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "starred DESC, in_visible_group DESC, (CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 1  ELSE 2 END), times_used DESC, display_name, contact_id, is_super_primary DESC, is_primary DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    move/from16 v14, v20

    move-object v11, v4

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v4, v19

    .line 5702
    goto/16 :goto_1

    .line 5700
    :cond_1c
    const-string v4, "starred DESC, in_visible_group DESC, (CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 1  ELSE 2 END), times_used DESC, display_name, contact_id, is_super_primary DESC, is_primary DESC"

    goto :goto_8

    .line 5707
    :sswitch_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aJ()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5711
    const-string v4, "remove_duplicate_entries"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    .line 5713
    if-eqz v4, :cond_30

    .line 5714
    const-string v12, "contact_id, data1"

    .line 5717
    const-string v4, "DISTINCT contact_id||\',\'||data1"

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 5724
    :sswitch_20
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5725
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5726
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aJ()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5729
    goto/16 :goto_1

    .line 5733
    :sswitch_21
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aJ()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5736
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1d

    .line 5737
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 5738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5739
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5740
    const-string v4, " AND UPPER(data1)=UPPER(?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5743
    :cond_1d
    if-nez p5, :cond_30

    .line 5744
    const-string p5, "(contact_id IN default_directory) DESC"

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 5751
    :sswitch_22
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5752
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->ud:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5753
    if-nez v4, :cond_33

    .line 5754
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 5756
    :goto_9
    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 5757
    const/4 v4, 0x0

    .line 5759
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_32

    .line 5760
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 5761
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 5762
    const/4 v4, 0x0

    move-object v5, v4

    .line 5766
    :goto_a
    if-nez v5, :cond_1e

    .line 5768
    const-string v4, " AND 0"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5800
    :goto_b
    const-string v12, "data1,contact_id"

    .line 5801
    if-nez p5, :cond_30

    .line 5802
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->t(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 5803
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 5804
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "starred DESC, in_visible_group DESC, (CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 1  ELSE 2 END), times_used DESC, display_name, contact_id, is_super_primary DESC, is_primary DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_c
    move/from16 v14, v20

    move-object v11, v4

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v4, v19

    .line 5808
    goto/16 :goto_1

    .line 5770
    :cond_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5771
    const-string v4, " AND _id IN ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5772
    const-string v4, "SELECT _id FROM data WHERE mimetype_id="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aJ()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5777
    const-string v4, " AND data1 LIKE "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5778
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5779
    const-string v4, "@"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 5780
    const-string v4, " UNION SELECT _id FROM data WHERE +mimetype_id="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aJ()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5785
    const-string v4, " AND raw_contact_id IN (SELECT raw_contacts._id FROM search_index JOIN raw_contacts ON (search_index.contact_id=raw_contacts.contact_id) WHERE name MATCH \'"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5792
    sget-object v4, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->vb:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    invoke-static {v5, v4}, Lcom/android/providers/contacts/SearchIndexManager;->a(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 5794
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5795
    const-string v4, "\')"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5797
    :cond_1f
    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5798
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 5806
    :cond_20
    const-string v4, "starred DESC, in_visible_group DESC, (CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 1  ELSE 2 END), times_used DESC, display_name, contact_id, is_super_primary DESC, is_primary DESC"

    goto/16 :goto_c

    .line 5813
    :sswitch_23
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aM()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5817
    const-string v4, "remove_duplicate_entries"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    .line 5819
    if-eqz v4, :cond_30

    .line 5820
    const-string v12, "contact_id, data1"

    .line 5823
    const-string v4, "DISTINCT contact_id||\',\'||data1"

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 5830
    :sswitch_24
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5831
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aM()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5834
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5835
    goto/16 :goto_1

    .line 5839
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v4

    .line 5840
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5842
    const-string v4, "data"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5843
    const-string v4, "mimetype_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5844
    goto/16 :goto_1

    .line 5848
    :sswitch_26
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5849
    goto/16 :goto_1

    .line 5854
    :sswitch_27
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5855
    goto/16 :goto_1

    .line 5860
    :sswitch_28
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 5861
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5862
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5863
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5864
    goto/16 :goto_1

    .line 5869
    :sswitch_29
    const/16 v4, 0x7d4

    move/from16 v0, v22

    if-ne v0, v4, :cond_21

    const/4 v4, 0x1

    .line 5870
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5871
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5872
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5873
    const-string v4, " AND raw_contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5874
    goto/16 :goto_1

    .line 5869
    :cond_21
    const/4 v4, 0x2

    goto :goto_d

    .line 5878
    :sswitch_2a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5879
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5880
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5881
    const-string v4, "raw_contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5882
    goto/16 :goto_1

    .line 5886
    :sswitch_2b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 5887
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 5888
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5889
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5890
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5891
    const-string v4, "raw_contact_id=? AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5893
    goto/16 :goto_1

    .line 5897
    :sswitch_2c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5898
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5899
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5900
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5901
    goto/16 :goto_1

    .line 5906
    :sswitch_2d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5907
    goto/16 :goto_1

    .line 5912
    :sswitch_2e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5913
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5914
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5915
    goto/16 :goto_1

    .line 5919
    :sswitch_2f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5920
    const-string v4, " AND _id=photo_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5921
    goto/16 :goto_1

    .line 5926
    :sswitch_30
    const/16 p3, 0x0

    .line 5927
    const/16 p4, 0x0

    .line 5928
    const-string v4, "sip"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 5929
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 5932
    const-string p5, "display_name ASC"

    .line 5935
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 5937
    :goto_e
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZ)V

    .line 5938
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v5, v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5940
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5941
    goto/16 :goto_1

    .line 5935
    :cond_23
    const-string v4, ""

    move-object v10, v4

    goto :goto_e

    .line 5942
    :cond_24
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 5945
    const-string p5, " length(lookup.normalized_number) DESC"

    .line 5948
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 5949
    :goto_f
    const/4 v5, 0x0

    .line 5950
    invoke-static {v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v6

    .line 5951
    if-eqz v6, :cond_26

    .line 5952
    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v5

    .line 5954
    :cond_26
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v6, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5956
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tQ:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5958
    goto/16 :goto_1

    .line 5948
    :cond_27
    const-string v4, ""

    goto :goto_f

    .line 5962
    :sswitch_31
    const-string v4, "view_groups"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5963
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tR:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5964
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5965
    goto/16 :goto_1

    .line 5969
    :sswitch_32
    const-string v4, "view_groups"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5970
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tR:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5971
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5972
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5973
    goto/16 :goto_1

    .line 5977
    :sswitch_33
    const-string v4, "return_group_count_per_account"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    .line 5980
    const-string v4, "view_groups AS groups"

    .line 5981
    const-string v6, "summ_count"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 5982
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " LEFT OUTER JOIN (SELECT data.data1 AS member_count_group_id, COUNT(data.raw_contact_id) AS group_member_count FROM data WHERE data.mimetype_id = (SELECT _id FROM mimetypes WHERE mimetypes.mimetype = \'vnd.android.cursor.item/group_membership\')GROUP BY member_count_group_id) AS member_count_table ON (groups._id = member_count_table.member_count_group_id)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5984
    :cond_28
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5985
    if-eqz v5, :cond_29

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tT:Lcom/android/providers/contacts/ProjectionMap;

    :goto_10
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5988
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5989
    const-string v12, "groups._id"

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5990
    goto/16 :goto_1

    .line 5985
    :cond_29
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tS:Lcom/android/providers/contacts/ProjectionMap;

    goto :goto_10

    .line 5994
    :sswitch_34
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5995
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_30

    .line 5996
    const-string v4, "_id IN (SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1=?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5998
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5999
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 6000
    goto/16 :goto_1

    .line 6005
    :sswitch_35
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->i([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 6009
    :sswitch_36
    const-string v4, "agg_exceptions"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6010
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tU:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 6011
    goto/16 :goto_1

    .line 6015
    :sswitch_37
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 6016
    const/4 v10, 0x0

    .line 6017
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2a

    .line 6018
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v10, v4

    .line 6021
    :cond_2a
    if-eqz v13, :cond_2b

    .line 6022
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 6027
    :goto_11
    const/4 v11, 0x0

    .line 6028
    const-string v4, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 6029
    if-eqz v4, :cond_2d

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 6030
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6031
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6032
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 6033
    const/4 v5, -0x1

    if-ne v12, v5, :cond_2c

    new-instance v5, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;

    const-string v12, "name"

    invoke-direct {v5, v12, v4}, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    :goto_13
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 6024
    :cond_2b
    const/4 v9, 0x5

    goto :goto_11

    .line 6033
    :cond_2c
    new-instance v5, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v13, v4}, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_13

    .line 6043
    :cond_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 6045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactAggregator;

    move-object/from16 v5, v21

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v11}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 6050
    :sswitch_38
    const-string v4, "settings"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6051
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tV:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6052
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 6056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 6058
    if-eqz p2, :cond_2e

    move-object/from16 v0, p2

    array-length v4, v0

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "summ_count"

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 6060
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 6062
    :cond_2e
    if-eqz p2, :cond_30

    move-object/from16 v0, p2

    array-length v4, v0

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "summ_phones"

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 6065
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    .line 6073
    :sswitch_39
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 6074
    goto/16 :goto_1

    .line 6078
    :sswitch_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 6079
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 6080
    const-string v4, "data._id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 6081
    goto/16 :goto_1

    .line 6085
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->rK:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v4, v0, v1, v13}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 6090
    :sswitch_3c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 6091
    const-string v4, "suggest_intent_extra_data"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6093
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/ContactsProvider2;->rK:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p2

    invoke-virtual {v7, v4, v0, v5, v6}, Lcom/android/providers/contacts/GlobalSearchSupport;->c(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 6098
    :sswitch_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lmiui/provider/ExtraSettings$Secure;->checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v4

    .line 6099
    if-nez v4, :cond_2

    .line 6101
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/ContactsProvider2;->rK:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v7 .. v13}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 6106
    :sswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 6107
    goto/16 :goto_1

    .line 6111
    :sswitch_3f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 6112
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 6113
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 6114
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 6115
    goto/16 :goto_1

    .line 6119
    :sswitch_40
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 6123
    :sswitch_41
    const-string v4, "directories"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6124
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->tZ:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 6125
    goto/16 :goto_1

    .line 6129
    :sswitch_42
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 6130
    const-string v6, "directories"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6131
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->tZ:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6132
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 6133
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 6134
    goto/16 :goto_1

    .line 6138
    :sswitch_43
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    :cond_2f
    move-object v4, v6

    goto/16 :goto_2

    :cond_30
    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_1

    :cond_31
    move-object v5, v4

    goto/16 :goto_a

    :cond_32
    move-object v5, v4

    goto/16 :goto_a

    :cond_33
    move-object v9, v4

    goto/16 :goto_9

    :cond_34
    move-object v9, v4

    goto/16 :goto_7

    :cond_35
    move-object v5, v4

    goto/16 :goto_6

    .line 5162
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_10
        0x3ed -> :sswitch_9
        0x3ee -> :sswitch_a
        0x3ef -> :sswitch_a
        0x3f0 -> :sswitch_c
        0x3f1 -> :sswitch_11
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_4
        0x3f7 -> :sswitch_7
        0x3f8 -> :sswitch_8
        0x3f9 -> :sswitch_4
        0x3fa -> :sswitch_4
        0x3fb -> :sswitch_12
        0x3fc -> :sswitch_13
        0x3fd -> :sswitch_13
        0x3fe -> :sswitch_5
        0x3ff -> :sswitch_6
        0x400 -> :sswitch_6
        0x401 -> :sswitch_b
        0x402 -> :sswitch_34
        0x403 -> :sswitch_35
        0x7d2 -> :sswitch_27
        0x7d3 -> :sswitch_28
        0x7d4 -> :sswitch_29
        0x7d5 -> :sswitch_3f
        0x7d7 -> :sswitch_2a
        0x7d8 -> :sswitch_2b
        0xbb8 -> :sswitch_2d
        0xbb9 -> :sswitch_2e
        0xbba -> :sswitch_1b
        0xbbb -> :sswitch_1d
        0xbbc -> :sswitch_1e
        0xbbd -> :sswitch_1f
        0xbbe -> :sswitch_20
        0xbbf -> :sswitch_21
        0xbc0 -> :sswitch_22
        0xbc1 -> :sswitch_23
        0xbc2 -> :sswitch_24
        0xbc7 -> :sswitch_25
        0xbc8 -> :sswitch_26
        0xbc9 -> :sswitch_1c
        0xfa0 -> :sswitch_30
        0x1770 -> :sswitch_36
        0x1b58 -> :sswitch_39
        0x1b59 -> :sswitch_3a
        0x1f40 -> :sswitch_37
        0x2328 -> :sswitch_38
        0x2710 -> :sswitch_31
        0x2711 -> :sswitch_32
        0x2713 -> :sswitch_33
        0x2af8 -> :sswitch_0
        0x2afa -> :sswitch_0
        0x2ee1 -> :sswitch_3b
        0x2ee2 -> :sswitch_3c
        0x2ee3 -> :sswitch_3d
        0x3a99 -> :sswitch_3e
        0x3e81 -> :sswitch_40
        0x4269 -> :sswitch_41
        0x426a -> :sswitch_42
        0x4650 -> :sswitch_43
        0x4a38 -> :sswitch_d
        0x4a39 -> :sswitch_e
        0x4a3a -> :sswitch_2d
        0x4a3b -> :sswitch_2e
        0x4a3c -> :sswitch_f
        0x4a3d -> :sswitch_27
        0x4a3e -> :sswitch_28
        0x4a3f -> :sswitch_29
        0x4a40 -> :sswitch_2c
        0x4a41 -> :sswitch_39
        0x4a42 -> :sswitch_3e
        0x4a43 -> :sswitch_2f
        0x5208 -> :sswitch_14
        0x5209 -> :sswitch_17
        0x520a -> :sswitch_15
        0x520b -> :sswitch_18
        0x520c -> :sswitch_19
        0x520d -> :sswitch_16
        0x55f1 -> :sswitch_1a
    .end sparse-switch
.end method

.method protected a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2445
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    if-eqz v0, :cond_0

    .line 2446
    const-string v0, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertInTransaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2451
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2454
    :cond_1
    const-string v0, "caller_is_syncadapter"

    invoke-static {p1, v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v7

    .line 2457
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2460
    sparse-switch v0, :sswitch_data_0

    .line 2551
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 2552
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uB:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2559
    :goto_0
    return-object v0

    .line 2463
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2555
    :goto_1
    cmp-long v2, v0, v3

    if-gez v2, :cond_d

    .line 2556
    const/4 v0, 0x0

    goto :goto_0

    .line 2467
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->w(Landroid/content/ContentValues;)J

    move-wide v0, v3

    .line 2468
    goto :goto_1

    .line 2472
    :sswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The profile contact is created automatically"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2478
    :sswitch_3
    invoke-direct {p0, p1, p2, v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/content/ContentValues;Z)J

    move-result-wide v5

    .line 2479
    iget-boolean v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_2

    move v0, v1

    :goto_2
    or-int/2addr v0, v8

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2480
    goto :goto_1

    :cond_2
    move v0, v2

    .line 2479
    goto :goto_2

    .line 2485
    :sswitch_4
    const/16 v5, 0x7d4

    if-ne v0, v5, :cond_3

    move v0, v1

    .line 2486
    :goto_3
    const-string v5, "raw_contact_id"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    invoke-direct {p0, p2, v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/ContentValues;Z)J

    move-result-wide v5

    .line 2488
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_4

    :goto_4
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2489
    goto :goto_1

    .line 2485
    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    :cond_4
    move v1, v2

    .line 2488
    goto :goto_4

    .line 2493
    :sswitch_5
    const-string v5, "raw_contact_id"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->f(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2495
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_5

    :goto_5
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2496
    goto :goto_1

    :cond_5
    move v1, v2

    .line 2495
    goto :goto_5

    .line 2501
    :sswitch_6
    invoke-direct {p0, p2, v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/ContentValues;Z)J

    move-result-wide v5

    .line 2502
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_6

    :goto_6
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2503
    goto :goto_1

    :cond_6
    move v1, v2

    .line 2502
    goto :goto_6

    .line 2507
    :sswitch_7
    const-string v0, "mimetype"

    const-string v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {p2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    invoke-direct {p0, p2, v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/ContentValues;Z)J

    move-result-wide v5

    .line 2509
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_7

    :goto_7
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2510
    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 2509
    goto :goto_7

    .line 2514
    :sswitch_8
    invoke-direct {p0, p1, p2, v7}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Landroid/content/ContentValues;Z)J

    move-result-wide v5

    .line 2515
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_8

    :goto_8
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2516
    goto/16 :goto_1

    :cond_8
    move v1, v2

    .line 2515
    goto :goto_8

    .line 2520
    :sswitch_9
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->h(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2521
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_9

    :goto_9
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2522
    goto/16 :goto_1

    :cond_9
    move v1, v2

    .line 2521
    goto :goto_9

    .line 2527
    :sswitch_a
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->y(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_1

    .line 2532
    :sswitch_b
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->f(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2533
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_a

    :goto_a
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2534
    goto/16 :goto_1

    :cond_a
    move v1, v2

    .line 2533
    goto :goto_a

    .line 2538
    :sswitch_c
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->g(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2539
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_b

    :goto_b
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2540
    goto/16 :goto_1

    :cond_b
    move v1, v2

    .line 2539
    goto :goto_b

    .line 2544
    :sswitch_d
    const-string v5, "stream_item_id"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->g(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2546
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    if-nez v7, :cond_c

    :goto_c
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    move-wide v0, v5

    .line 2547
    goto/16 :goto_1

    :cond_c
    move v1, v2

    .line 2546
    goto :goto_c

    .line 2559
    :cond_d
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 2460
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x7d2 -> :sswitch_3
        0x7d4 -> :sswitch_4
        0x7d7 -> :sswitch_5
        0xbb8 -> :sswitch_6
        0xbc7 -> :sswitch_7
        0x1b58 -> :sswitch_a
        0x2328 -> :sswitch_9
        0x2710 -> :sswitch_8
        0x2af8 -> :sswitch_0
        0x2afa -> :sswitch_0
        0x4a38 -> :sswitch_2
        0x4a3a -> :sswitch_6
        0x4a3d -> :sswitch_3
        0x4a3f -> :sswitch_4
        0x4a41 -> :sswitch_a
        0x5208 -> :sswitch_b
        0x5209 -> :sswitch_c
        0x520b -> :sswitch_d
    .end sparse-switch
.end method

.method protected a(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uP:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uP:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1583
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6910
    const/4 v6, 0x0

    .line 6911
    const/4 v5, 0x0

    .line 6912
    const/4 v4, 0x0

    .line 6913
    const/4 v3, 0x0

    .line 6914
    const/4 v2, 0x0

    .line 6918
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->ai(Ljava/lang/String;)Z

    move-result v12

    .line 6920
    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 6921
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6922
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move-object v7, v2

    move-object v8, v3

    move v9, v4

    move-object v10, v5

    move v11, v1

    .line 6934
    :goto_1
    const-string v1, "snippet_contact_id"

    .line 6935
    const-string v1, " JOIN (SELECT contact_id AS snippet_contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6936
    if-eqz p3, :cond_0

    .line 6937
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6938
    if-eqz v11, :cond_4

    .line 6939
    const-string v1, "ifnull("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6940
    move-object/from16 v0, p4

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6941
    const-string v1, "||(SELECT MIN(data1)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6942
    const-string v1, " FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6943
    const-string v1, " WHERE  search_index.contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6944
    const-string v1, "=contact_id AND data1 LIKE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6946
    const-string v1, ")||"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6947
    move-object/from16 v0, p5

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6948
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6951
    if-eqz v12, :cond_3

    if-eqz p8, :cond_3

    .line 6952
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6956
    :goto_2
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7011
    :goto_3
    const-string v1, " AS snippet"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7014
    :cond_0
    const-string v1, " FROM search_index"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7015
    const-string v1, " WHERE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7016
    const-string v1, "search_index MATCH \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7017
    if-eqz v11, :cond_b

    .line 7023
    if-nez v10, :cond_a

    const-string v1, ""

    .line 7025
    :goto_4
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7026
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7027
    const-string v1, "*\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7051
    :goto_5
    const-string v1, "\' AND snippet_contact_id IN default_directory)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7052
    const-string v1, " ON (_id=snippet_contact_id)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7053
    return-void

    .line 6922
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6924
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    .line 6925
    if-eqz v4, :cond_f

    .line 6926
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6927
    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 6928
    if-eqz v1, :cond_e

    .line 6929
    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v8, v3

    move v9, v4

    move-object v10, v5

    move v11, v6

    goto/16 :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 6954
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 6957
    :cond_4
    if-eqz v9, :cond_7

    .line 6958
    const-string v1, "ifnull("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6959
    move-object/from16 v0, p4

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6960
    const-string v1, "||(SELECT MIN(data1)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6961
    const-string v1, " FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN phone_lookup"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6963
    const-string v1, " ON data._id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6964
    const-string v1, "=phone_lookup.data_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6965
    const-string v1, " WHERE  search_index.contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6966
    const-string v1, "=contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6967
    const-string v1, " AND normalized_number LIKE \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6968
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6969
    const-string v1, "%\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6970
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6971
    const-string v1, " OR normalized_number LIKE \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6972
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6973
    const-string v1, "%\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6975
    :cond_5
    const-string v1, ")||"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6976
    move-object/from16 v0, p5

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6977
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6980
    if-eqz v12, :cond_6

    if-eqz p8, :cond_6

    .line 6981
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6985
    :goto_6
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_6
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 6983
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    .line 6987
    :cond_7
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6988
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 6990
    if-eqz v12, :cond_8

    if-eqz p8, :cond_8

    .line 6991
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 6993
    :cond_8
    const-string v2, "(CASE WHEN EXISTS (SELECT 1 FROM "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6994
    const-string v2, "raw_contacts AS rc INNER JOIN "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6995
    const-string v2, "name_lookup AS nl ON (rc._id"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6996
    const-string v2, "=nl.raw_contact_id"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6997
    const-string v2, ") WHERE nl.normalized_name"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GLOB \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6999
    const-string v1, "nl.name_type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7000
    const-string v1, "2 AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7001
    const-string v1, "search_index.contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7002
    const-string v1, "=rc.contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7003
    const-string v1, ") THEN NULL ELSE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 7004
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7005
    const-string v1, " END)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 7008
    :cond_9
    const-string v1, "NULL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 7023
    :cond_a
    invoke-static {v10}, Lcom/android/providers/contacts/ContactsProvider2;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 7028
    :cond_b
    if-eqz v9, :cond_d

    .line 7030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OR tokens:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7033
    if-eqz v7, :cond_c

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OR tokens:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7039
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7043
    invoke-static {v1}, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->aj(Ljava/lang/String;)Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/providers/contacts/SearchIndexManager;->a(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 7033
    :cond_c
    const-string v1, ""

    goto :goto_7

    .line 7047
    :cond_d
    sget-object v1, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->vc:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    invoke-static {p2, v1}, Lcom/android/providers/contacts/SearchIndexManager;->a(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_e
    move-object v7, v2

    move-object v8, v3

    move v9, v4

    move-object v10, v5

    move v11, v6

    goto/16 :goto_1

    :cond_f
    move-object v7, v2

    move-object v8, v3

    move v9, v4

    move-object v10, v5

    move v11, v6

    goto/16 :goto_1
.end method

.method protected a(Landroid/accounts/Account;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4878
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    .line 4880
    :try_start_0
    const-string v2, "com.android.contacts"

    invoke-interface {v1, p1, v2}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 4883
    :cond_0
    :goto_0
    return v0

    .line 4881
    :catch_0
    move-exception v1

    .line 4882
    const-string v2, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot obtain sync flag for account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Lcom/android/providers/contacts/ContactsTransaction;)Z
    .locals 3
    .parameter

    .prologue
    .line 2259
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/ContactsTransaction;->N(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2260
    if-eqz v0, :cond_0

    .line 2261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2262
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2266
    :cond_0
    const-string v0, "contacts"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/ContactsTransaction;->M(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2267
    if-eqz v0, :cond_1

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/android/providers/contacts/LegacyContactImporter;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1994
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactAggregator;->isEnabled()Z

    move-result v1

    .line 1995
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 1997
    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/LegacyContactImporter;->cI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2000
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    const/4 v0, 0x1

    .line 2007
    :goto_0
    return v0

    .line 2003
    :catch_0
    move-exception v1

    .line 2004
    const-string v2, "ContactsProvider"

    const-string v3, "Legacy contact import failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2006
    :cond_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/LegacyContactImporter;->cJ()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->iJ:J

    goto :goto_0
.end method

.method protected a([Landroid/accounts/Account;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 4663
    .line 4664
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 4665
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4666
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4672
    :try_start_0
    const-string v0, "accounts"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->ae(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 4676
    array-length v6, p1

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v0, p1, v2

    .line 4677
    new-instance v7, Lcom/android/providers/contacts/AccountWithDataSet;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v0, v9}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4683
    const-string v0, "INSERT INTO accounts (account_name, account_type, data_set) VALUES (?, ?, ?)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x1

    invoke-virtual {v7}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x2

    invoke-virtual {v7}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v8

    invoke-virtual {v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 4676
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 4696
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4698
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 4699
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4700
    new-instance v7, Landroid/accounts/Account;

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4702
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4703
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 4855
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 4707
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4709
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4710
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing data for removed account "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4711
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 4715
    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v2, v4

    .line 4722
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND data_set"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, " IS NULL"

    :goto_5
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND data_set"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, " IS NULL"

    :goto_6
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4726
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND data_set"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, " IS NULL"

    :goto_7
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4729
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DELETE FROM groups WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM presence WHERE presence_raw_contact_id IN (SELECT _id FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4742
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM stream_item_photos WHERE stream_item_id IN (SELECT _id FROM stream_items WHERE raw_contact_id IN (SELECT _id FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4754
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM stream_items WHERE raw_contact_id IN (SELECT _id FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4763
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4768
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM settings WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM accounts WHERE account_name=? AND account_type=?"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4778
    const-string v0, "DELETE FROM directories WHERE accountName=? AND accountType=?"

    invoke-virtual {v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4782
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fZ()V

    goto/16 :goto_3

    .line 4715
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    move-object v2, v1

    goto/16 :goto_4

    .line 4722
    :cond_4
    const-string v1, " = ?"

    goto/16 :goto_5

    .line 4724
    :cond_5
    const-string v1, " = ?"

    goto/16 :goto_6

    .line 4726
    :cond_6
    const-string v0, " = ?"

    goto/16 :goto_7

    .line 4788
    :cond_7
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 4789
    const-string v1, "SELECT _id FROM contacts WHERE (name_raw_contact_id NOT NULL AND name_raw_contact_id NOT IN (SELECT _id FROM raw_contacts)) OR (photo_id NOT NULL AND photo_id NOT IN (SELECT _id FROM data))"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 4800
    :goto_8
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4801
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    .line 4804
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4807
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4808
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/providers/contacts/ContactAggregator;->f(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_9

    .line 4810
    :cond_9
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aG()V

    .line 4815
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4816
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fX()V

    .line 4820
    :cond_a
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4821
    invoke-static {v5}, Lcom/android/providers/contacts/T9SearchSupport;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4822
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    :cond_b
    move v0, v3

    .line 4829
    :goto_a
    const-string v1, "accounts"

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->ae(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 4830
    const-string v2, "raw_contacts"

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->ae(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 4832
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4835
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4839
    const-string v1, "INSERT INTO accounts (account_name, account_type, data_set) VALUES (?, ?, ?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v5, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    goto :goto_b

    .line 4849
    :cond_c
    if-eqz v1, :cond_d

    .line 4851
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->a(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 4853
    :cond_d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4855
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4857
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uD:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4859
    if-eqz v1, :cond_e

    .line 4860
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->b([Landroid/accounts/Account;)V

    .line 4861
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fK()V

    .line 4864
    :cond_e
    return v1

    :cond_f
    move v0, v1

    goto :goto_a

    :cond_10
    move v0, v1

    goto/16 :goto_1
.end method

.method protected aF(I)V
    .locals 1
    .parameter

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uP:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1579
    return-void
.end method

.method protected aG(I)V
    .locals 4
    .parameter

    .prologue
    .line 2414
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    if-eq v0, p1, :cond_0

    .line 2415
    iput p1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    .line 2416
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2418
    :cond_0
    return-void
.end method

.method aP()V
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aP()V

    .line 2015
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->aP()V

    .line 2016
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ut:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0}, Lcom/android/providers/contacts/PhotoStore;->clear()V

    .line 2017
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uu:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0}, Lcom/android/providers/contacts/PhotoStore;->clear()V

    .line 2018
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    .line 2019
    return-void
.end method

.method public aa(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;
    .locals 4
    .parameter

    .prologue
    .line 2421
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2422
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->ab(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    .line 2430
    :cond_0
    :goto_0
    return-object v0

    .line 2424
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ul:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/DataRowHandler;

    .line 2425
    if-nez v0, :cond_0

    .line 2426
    new-instance v0, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 2428
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ul:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public ab(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;
    .locals 4
    .parameter

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->um:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/DataRowHandler;

    .line 2435
    if-nez v0, :cond_0

    .line 2436
    new-instance v0, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->ur:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 2438
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->um:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    :cond_0
    return-object v0
.end method

.method protected ah(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 8105
    if-nez p1, :cond_0

    .line 8106
    const/4 v0, 0x1

    .line 8133
    :goto_0
    return v0

    .line 8109
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uD:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 8110
    if-eqz v0, :cond_1

    .line 8111
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 8114
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    .line 8117
    :try_start_0
    invoke-interface {v1}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 8118
    const-string v6, "com.android.contacts"

    iget-object v7, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8120
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8128
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 8129
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 8132
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uD:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8133
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 8117
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8124
    :catch_0
    move-exception v1

    .line 8125
    const-string v1, "ContactsProvider"

    const-string v3, "Could not acquire sync adapter types"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 2274
    invoke-super {p0, p1}, Lcom/android/providers/contacts/AbstractContactsProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method ay(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2181
    return-void
.end method

.method public b(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 7365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7366
    const-string v2, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7373
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 7374
    sparse-switch v2, :sswitch_data_0

    .line 7592
    new-instance v3, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "File does not exist"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7369
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 7376
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "_id=photo_id AND contact_id=?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 7588
    :goto_1
    return-object v2

    .line 7384
    :sswitch_1
    const-string v2, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7385
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Display photos retrieved by contact ID can only be read."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7388
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 7389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "contacts"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "photo_file_id"

    aput-object v6, v4, v5

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 7394
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7395
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 7396
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->R(J)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 7402
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 7399
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7402
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7407
    :sswitch_2
    const-string v2, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7408
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Display photos retrieved by contact ID can only be read."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7411
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "contacts"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "photo_file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 7414
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7415
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 7416
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->R(J)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 7422
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 7419
    :cond_5
    :try_start_3
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7422
    :catchall_1
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7430
    :sswitch_3
    const-string v3, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 7431
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Photos retrieved by contact lookup key can only be read."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7434
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 7435
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 7436
    const/4 v5, 0x4

    if-ge v4, v5, :cond_7

    .line 7437
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7441
    :cond_7
    const/16 v5, 0x3f6

    if-eq v2, v5, :cond_8

    const/16 v5, 0x3f5

    if-ne v2, v5, :cond_9

    :cond_8
    const/4 v2, 0x1

    move/from16 v17, v2

    .line 7443
    :goto_2
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 7444
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "photo_id"

    aput-object v5, v6, v2

    const/4 v2, 0x1

    const-string v5, "photo_file_id"

    aput-object v5, v6, v2

    .line 7445
    const/4 v2, 0x5

    if-ne v4, v2, :cond_b

    .line 7446
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 7447
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 7448
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 7449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id"

    const-string v15, "lookup"

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v16}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7452
    if-eqz v8, :cond_b

    .line 7454
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7455
    if-eqz v17, :cond_a

    .line 7456
    const-string v2, "photo_file_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 7458
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->R(J)Landroid/content/res/AssetFileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    .line 7465
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 7441
    :cond_9
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_2

    .line 7460
    :cond_a
    :try_start_5
    const-string v2, "photo_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 7461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "_id=?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    .line 7465
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7470
    :cond_b
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 7471
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 7472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 7473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7476
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7477
    if-eqz v17, :cond_c

    .line 7478
    const-string v2, "photo_file_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 7479
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->R(J)Landroid/content/res/AssetFileDescriptor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v2

    .line 7486
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 7481
    :cond_c
    :try_start_7
    const-string v2, "photo_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 7482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "_id=?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v2

    .line 7486
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7491
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 7492
    const-string v2, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    move v10, v2

    .line 7495
    :goto_3
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 7496
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "data14"

    aput-object v5, v4, v3

    .line 7497
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 7498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v7

    .line 7499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "raw_contact_id=? AND mimetype_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v9

    const/4 v9, 0x1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "is_primary DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 7503
    const-wide/16 v5, 0x0

    .line 7504
    const-wide/16 v2, 0x0

    .line 7506
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_d

    .line 7507
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7508
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 7509
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-wide v2

    .line 7512
    :cond_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 7518
    if-eqz v10, :cond_f

    move-object/from16 v2, p0

    move-wide v3, v11

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 7519
    invoke-direct/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->a(JJLandroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_1

    .line 7492
    :cond_e
    const/4 v2, 0x0

    move v10, v2

    goto :goto_3

    .line 7512
    :catchall_4
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7521
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->R(J)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_1

    .line 7526
    :sswitch_5
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 7527
    const-string v4, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 7528
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Display photos retrieved by key can only be read."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7531
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->R(J)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_1

    .line 7535
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v6

    .line 7537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id=? AND mimetype_id="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_1

    .line 7546
    :sswitch_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7547
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7548
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_1

    .line 7555
    :sswitch_8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7556
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7557
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_1

    .line 7561
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7562
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7563
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 7564
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 7565
    const/4 v3, 0x0

    .line 7569
    array-length v8, v5

    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_4
    if-ge v3, v8, :cond_12

    aget-object v9, v5, v3

    .line 7570
    if-nez v4, :cond_11

    .line 7571
    const-string v2, "("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7576
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    .line 7577
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7578
    add-int/lit8 v4, v4, 0x1

    .line 7569
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 7573
    :cond_11
    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 7580
    :cond_12
    const/16 v2, 0x29

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7586
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7587
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v2, v4}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7588
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_1

    .line 7374
    :sswitch_data_0
    .sparse-switch
        0x3f1 -> :sswitch_0
        0x3f2 -> :sswitch_3
        0x3f3 -> :sswitch_3
        0x3f4 -> :sswitch_1
        0x3f5 -> :sswitch_3
        0x3f6 -> :sswitch_3
        0x3f7 -> :sswitch_8
        0x3f8 -> :sswitch_9
        0x7d6 -> :sswitch_4
        0xbb9 -> :sswitch_6
        0x4a3c -> :sswitch_7
        0x4a44 -> :sswitch_2
        0x55f0 -> :sswitch_5
    .end sparse-switch
.end method

.method protected b(ILjava/lang/Object;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1586
    packed-switch p1, :pswitch_data_0

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1588
    :pswitch_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fG()V

    .line 1589
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1590
    iput-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uG:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 1595
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uJ:Z

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1597
    iput-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 1603
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fS()V

    goto :goto_0

    .line 1610
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1611
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uI:Z

    if-nez v1, :cond_1

    .line 1612
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v3, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1613
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uI:Z

    .line 1617
    :cond_1
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 1618
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fW()V

    .line 1619
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a([Landroid/accounts/Account;)Z

    move-result v1

    .line 1620
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fV()V

    .line 1621
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a([Landroid/accounts/Account;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1623
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->b([Landroid/accounts/Account;)V

    .line 1624
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->k(Z)V

    goto :goto_0

    .line 1629
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fH()V

    goto :goto_0

    .line 1634
    :pswitch_5
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fI()V

    goto :goto_0

    .line 1639
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->gb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1640
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->gc()V

    goto :goto_0

    .line 1646
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fJ()V

    goto :goto_0

    .line 1651
    :pswitch_8
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fK()V

    goto :goto_0

    .line 1656
    :pswitch_9
    if-eqz p2, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ui:Lcom/android/providers/contacts/ContactDirectoryManager;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 1664
    :pswitch_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1665
    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uQ:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1666
    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uQ:J

    .line 1669
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fW()V

    .line 1670
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fL()V

    .line 1671
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fV()V

    .line 1672
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fL()V

    goto/16 :goto_0

    .line 1586
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 2280
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 6547
    new-instance v0, Lcom/android/providers/contacts/ContactLookupKey;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactLookupKey;-><init>()V

    .line 6548
    invoke-virtual {v0, p2}, Lcom/android/providers/contacts/ContactLookupKey;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 6551
    const/4 v0, 0x3

    invoke-direct {p0, v4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6553
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->az(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    .line 6556
    :goto_0
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c(Ljava/util/ArrayList;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6557
    invoke-direct {p0, p1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 6558
    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 6577
    :cond_0
    :goto_1
    return-wide v0

    .line 6563
    :cond_1
    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->c(Ljava/util/ArrayList;I)Z

    move-result v5

    .line 6565
    if-eqz v5, :cond_2

    .line 6566
    invoke-direct {p0, p1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 6567
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 6572
    :cond_2
    if-nez v5, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v4, v2}, Lcom/android/providers/contacts/ContactsProvider2;->c(Ljava/util/ArrayList;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6574
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uG:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 2186
    const-string v0, "authorize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2187
    const-string v0, "uri_to_authorize"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2191
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->o(Landroid/net/Uri;)V

    .line 2192
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->l(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2193
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/ProfileProvider;->i(Landroid/net/Uri;)V

    .line 2197
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->m(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2199
    const-string v2, "authorized_uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2202
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected dL()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->oo:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method protected dN()V
    .locals 1

    .prologue
    .line 2404
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange(Z)V

    .line 2405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uL:Z

    .line 2406
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 2164
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->p(Landroid/net/Uri;)V

    .line 2166
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->l(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fV()V

    .line 2168
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ProfileProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2171
    :goto_0
    return v0

    .line 2170
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fW()V

    .line 2171
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/AbstractContactsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected eA()V
    .locals 1

    .prologue
    .line 2337
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->bN()V

    .line 2338
    return-void
.end method

.method public f(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7987
    const-string v0, "(SELECT DISTINCT contact_id FROM raw_contacts JOIN name_lookup ON(raw_contacts._id=raw_contact_id) WHERE normalized_name GLOB \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7994
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7995
    const-string v0, "*\' AND name_type IN(2,4,3))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7997
    return-void
.end method

.method fB()I
    .locals 1

    .prologue
    .line 1895
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sU:I

    return v0
.end method

.method protected fH()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1698
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    if-ne v0, v4, :cond_1

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1703
    const-string v1, "locale"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1704
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uM:Ljava/util/Locale;

    .line 1705
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1709
    iget v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    .line 1710
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    .line 1711
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 1712
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v3, p0, v2}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->a(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 1713
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1714
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    goto :goto_0
.end method

.method protected fJ()V
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uC:Lcom/android/providers/contacts/SearchIndexManager;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager;->ff()V

    .line 1743
    return-void
.end method

.method protected fL()V
    .locals 19

    .prologue
    .line 1776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v5

    .line 1783
    const-string v3, "view_data"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "data14"

    aput-object v8, v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mimetype_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data14"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NOT NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1786
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 1787
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 1789
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1790
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1791
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1792
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1793
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v11, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1796
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1800
    const-string v3, "stream_item_photos JOIN stream_items ON stream_item_id=stream_items._id JOIN raw_contacts ON raw_contact_id=raw_contacts._id"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "stream_item_photos._id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "stream_item_photos.stream_item_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "photo_file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "account_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1812
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 1813
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 1814
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 1816
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1817
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1818
    const/4 v8, 0x1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1819
    const/4 v8, 0x2

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1820
    const/4 v8, 0x3

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1821
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1822
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1823
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    new-instance v6, Landroid/accounts/Account;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1829
    :catchall_1
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->us:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v3, v10}, Lcom/android/providers/contacts/PhotoStore;->e(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 1837
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1839
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 1840
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1841
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1842
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1843
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1844
    const-string v6, "data14"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1845
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    .line 1848
    :cond_3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1851
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1852
    const-string v5, "stream_item_photos"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1857
    :catch_0
    move-exception v3

    .line 1859
    :try_start_3
    const-string v4, "ContactsProvider"

    const-string v5, "Failed to clean up outdated photo references"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1861
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1864
    :cond_4
    :goto_3
    return-void

    .line 1856
    :cond_5
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1861
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_2
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public fM()Lcom/android/providers/contacts/ProfileProvider;
    .locals 1

    .prologue
    .line 1877
    new-instance v0, Lcom/android/providers/contacts/ProfileProvider;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ProfileProvider;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    return-object v0
.end method

.method fN()Lcom/android/providers/contacts/NameSplitter;
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ix:Lcom/android/providers/contacts/NameSplitter;

    return-object v0
.end method

.method fO()Lcom/android/providers/contacts/NameLookupBuilder;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ir:Lcom/android/providers/contacts/NameLookupBuilder;

    return-object v0
.end method

.method protected fQ()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1922
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "contacts_imported_v1"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1924
    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fR()Lcom/android/providers/contacts/LegacyContactImporter;
    .locals 2

    .prologue
    .line 1928
    new-instance v0, Lcom/android/providers/contacts/LegacyContactImporter;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/providers/contacts/LegacyContactImporter;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsProvider2;)V

    return-object v0
.end method

.method protected fV()V
    .locals 2

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2091
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uw:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2092
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ur:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2093
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->us:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uu:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2094
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uk:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2095
    return-void
.end method

.method protected fW()V
    .locals 2

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2103
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uv:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2104
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2105
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->us:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ut:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2106
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uk:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2109
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2110
    return-void
.end method

.method public fZ()V
    .locals 2

    .prologue
    .line 5126
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ue:Ljava/util/HashMap;

    monitor-enter v1

    .line 5127
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uf:Z

    .line 5128
    monitor-exit v1

    .line 5129
    return-void

    .line 5128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 5
    .parameter

    .prologue
    .line 5068
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 5069
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    .line 5070
    new-array v3, v2, [Ljava/lang/String;

    .line 5071
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5072
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5073
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 5074
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 5073
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5076
    :cond_0
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 5078
    :cond_1
    return-object v1
.end method

.method g(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;
    .locals 1
    .parameter

    .prologue
    .line 1574
    new-instance v0, Lcom/android/providers/contacts/PhotoPriorityResolver;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/PhotoPriorityResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected ga()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 8089
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 8091
    :try_start_0
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 8092
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 8093
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 8098
    :goto_0
    return-object v0

    .line 8095
    :catch_0
    move-exception v0

    .line 8096
    const-string v1, "ContactsProvider"

    const-string v2, "Cannot determine the default account for contacts compatibility"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8098
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected gb()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 8218
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactAggregator;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8224
    :cond_0
    :goto_0
    return v0

    .line 8222
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "aggregation_v2"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 8224
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected gc()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 8231
    const-string v0, "ContactsProvider"

    const-string v2, "Upgrading aggregation algorithm"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8233
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v11

    .line 8236
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fW()V

    .line 8237
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .line 8238
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8239
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 8240
    const/4 v1, 0x1

    const-string v2, "raw_contacts r1 JOIN raw_contacts r2"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "r1._id"

    aput-object v5, v3, v4

    const-string v4, "r1._id!=r2._id AND r1.contact_id=r2.contact_id AND r1.account_name=r2.account_name AND r1.account_type=r2.account_type AND r1.data_set=r2.data_set"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v3

    move v2, v10

    .line 8250
    :goto_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8251
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 8252
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/providers/contacts/ContactAggregator;->a(JIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8254
    add-int/lit8 v2, v2, 0x1

    .line 8255
    goto :goto_0

    .line 8257
    :cond_0
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 8259
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v3, v1, v0}, Lcom/android/providers/contacts/ContactAggregator;->a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 8260
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fX()V

    .line 8261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 8262
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "aggregation_v2"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8265
    if-eqz v0, :cond_1

    .line 8266
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 8268
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 8269
    const-string v3, "ContactsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aggregation algorithm upgraded for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " contacts, in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, v11

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8272
    return-void

    .line 8257
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 8265
    :catchall_1
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_1
    if-eqz v1, :cond_2

    .line 8266
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 8268
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 8269
    const-string v1, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aggregation algorithm upgraded for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " contacts, in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8271
    throw v0

    .line 8265
    :catchall_2
    move-exception v0

    move v2, v10

    goto :goto_1

    :catchall_3
    move-exception v1

    move v2, v10

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_1
.end method

.method gd()Z
    .locals 2

    .prologue
    .line 8276
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ua:Z

    if-nez v0, :cond_0

    .line 8277
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ub:Z

    .line 8278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ua:Z

    .line 8280
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ub:Z

    return v0
.end method

.method public getContactDirectoryManagerForTest()Lcom/android/providers/contacts/ContactDirectoryManager;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ui:Lcom/android/providers/contacts/ContactDirectoryManager;

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter

    .prologue
    .line 1868
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->f(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1913
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getPhotoStore()Lcom/android/providers/contacts/PhotoStore;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ut:Lcom/android/providers/contacts/PhotoStore;

    return-object v0
.end method

.method getProfilePhotoStore()Lcom/android/providers/contacts/PhotoStore;
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uu:Lcom/android/providers/contacts/PhotoStore;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 7824
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uG:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 7826
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 7827
    sparse-switch v0, :sswitch_data_0

    .line 7909
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uB:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 7829
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/contact"

    goto :goto_0

    .line 7834
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 7838
    :sswitch_2
    const-string v0, "text/x-vcard"

    goto :goto_0

    .line 7847
    :sswitch_3
    const-string v0, "image/jpeg"

    goto :goto_0

    .line 7850
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/raw_contact"

    goto :goto_0

    .line 7853
    :sswitch_5
    const-string v0, "vnd.android.cursor.item/raw_contact"

    goto :goto_0

    .line 7856
    :sswitch_6
    const-string v0, "vnd.android.cursor.dir/data"

    goto :goto_0

    .line 7858
    :sswitch_7
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 7859
    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7860
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->up:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->i(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7862
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7865
    :sswitch_8
    const-string v0, "vnd.android.cursor.dir/phone_v2"

    goto :goto_0

    .line 7867
    :sswitch_9
    const-string v0, "vnd.android.cursor.item/phone_v2"

    goto :goto_0

    .line 7869
    :sswitch_a
    const-string v0, "vnd.android.cursor.dir/phone_lookup"

    goto :goto_0

    .line 7871
    :sswitch_b
    const-string v0, "vnd.android.cursor.dir/email_v2"

    goto :goto_0

    .line 7873
    :sswitch_c
    const-string v0, "vnd.android.cursor.item/email_v2"

    goto :goto_0

    .line 7875
    :sswitch_d
    const-string v0, "vnd.android.cursor.dir/postal-address_v2"

    goto :goto_0

    .line 7877
    :sswitch_e
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    goto :goto_0

    .line 7879
    :sswitch_f
    const-string v0, "vnd.android.cursor.dir/nickname"

    goto :goto_0

    .line 7881
    :sswitch_10
    const-string v0, "vnd.android.cursor.item/nickname"

    goto :goto_0

    .line 7883
    :sswitch_11
    const-string v0, "vnd.android.cursor.dir/aggregation_exception"

    goto :goto_0

    .line 7885
    :sswitch_12
    const-string v0, "vnd.android.cursor.item/aggregation_exception"

    goto :goto_0

    .line 7887
    :sswitch_13
    const-string v0, "vnd.android.cursor.dir/setting"

    goto :goto_0

    .line 7889
    :sswitch_14
    const-string v0, "vnd.android.cursor.dir/contact"

    goto :goto_0

    .line 7891
    :sswitch_15
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 7893
    :sswitch_16
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 7895
    :sswitch_17
    const-string v0, "vnd.android.cursor.dir/contact_directories"

    goto :goto_0

    .line 7897
    :sswitch_18
    const-string v0, "vnd.android.cursor.item/contact_directory"

    goto :goto_0

    .line 7899
    :sswitch_19
    const-string v0, "vnd.android.cursor.dir/stream_item"

    goto :goto_0

    .line 7901
    :sswitch_1a
    const-string v0, "vnd.android.cursor.item/stream_item"

    goto :goto_0

    .line 7903
    :sswitch_1b
    const-string v0, "vnd.android.cursor.dir/stream_item_photo"

    goto :goto_0

    .line 7905
    :sswitch_1c
    const-string v0, "vnd.android.cursor.item/stream_item_photo"

    goto :goto_0

    .line 7907
    :sswitch_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported for write-only URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7827
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_1
        0x3f1 -> :sswitch_3
        0x3f2 -> :sswitch_3
        0x3f3 -> :sswitch_3
        0x3f4 -> :sswitch_3
        0x3f5 -> :sswitch_3
        0x3f6 -> :sswitch_3
        0x3f7 -> :sswitch_2
        0x3f8 -> :sswitch_2
        0x7d2 -> :sswitch_4
        0x7d3 -> :sswitch_5
        0x7d6 -> :sswitch_3
        0xbb8 -> :sswitch_6
        0xbb9 -> :sswitch_7
        0xbba -> :sswitch_8
        0xbbb -> :sswitch_9
        0xbbd -> :sswitch_b
        0xbbe -> :sswitch_c
        0xbc1 -> :sswitch_d
        0xbc2 -> :sswitch_e
        0xbc7 -> :sswitch_f
        0xbc8 -> :sswitch_10
        0xfa0 -> :sswitch_a
        0x1770 -> :sswitch_11
        0x1771 -> :sswitch_12
        0x1f40 -> :sswitch_14
        0x2328 -> :sswitch_13
        0x2ee1 -> :sswitch_15
        0x2ee2 -> :sswitch_16
        0x4269 -> :sswitch_17
        0x426a -> :sswitch_18
        0x4a38 -> :sswitch_1
        0x4a3a -> :sswitch_6
        0x4a3c -> :sswitch_2
        0x4a3d -> :sswitch_4
        0x4a3e -> :sswitch_5
        0x5208 -> :sswitch_19
        0x5209 -> :sswitch_1d
        0x520a -> :sswitch_1a
        0x520b -> :sswitch_1b
        0x520c -> :sswitch_1c
        0x55f0 -> :sswitch_3
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 2117
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->p(Landroid/net/Uri;)V

    .line 2119
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fV()V

    .line 2121
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ProfileProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2124
    :goto_0
    return-object v0

    .line 2123
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fW()V

    .line 2124
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public isPhoneNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 8000
    .line 8001
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 8002
    :goto_0
    if-ge v2, v3, :cond_2

    .line 8003
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 8004
    const/16 v5, 0x30

    if-lt v4, v5, :cond_1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    .line 8005
    const/4 v0, 0x1

    .line 8002
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8006
    :cond_1
    const/16 v5, 0x2a

    if-eq v4, v5, :cond_0

    const/16 v5, 0x23

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_0

    const/16 v5, 0x4e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_0

    const/16 v5, 0x28

    if-eq v4, v5, :cond_0

    const/16 v5, 0x29

    if-eq v4, v5, :cond_0

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    move v0, v1

    .line 8011
    :cond_2
    return v0
.end method

.method protected k(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ui:Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactDirectoryManager;->c(Z)V

    .line 1747
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 4888
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->a(ILjava/lang/Object;)V

    .line 4889
    return-void
.end method

.method public n(Landroid/net/Uri;)Z
    .locals 8
    .parameter

    .prologue
    .line 2230
    const-string v0, "perm_token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2233
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 2234
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2235
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uz:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_0

    .line 2236
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2239
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2240
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uz:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2244
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2246
    const/4 v0, 0x1

    .line 2249
    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected notifyChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2409
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2411
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter

    .prologue
    .line 4658
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 4659
    return-void
.end method

.method public onBegin()V
    .locals 2

    .prologue
    .line 2285
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    if-eqz v0, :cond_0

    .line 2286
    const-string v0, "ContactsProvider"

    const-string v1, "onBeginTransaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2290
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ur:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->dT()V

    .line 2291
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uw:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->clear()V

    .line 2297
    :goto_0
    return-void

    .line 2293
    :cond_1
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->bM()V

    .line 2294
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->dT()V

    .line 2295
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uv:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->clear()V

    goto :goto_0
.end method

.method public onCommit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2301
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    if-eqz v0, :cond_0

    .line 2302
    const-string v0, "ContactsProvider"

    const-string v1, "beforeTransactionCommit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2306
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->bO()V

    .line 2309
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fY()V

    .line 2310
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->ux:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2311
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    if-eqz v0, :cond_2

    .line 2312
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uK:Z

    .line 2313
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aG()V

    .line 2316
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fX()V

    .line 2318
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uF:Z

    if-eqz v0, :cond_3

    .line 2319
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fK()V

    .line 2320
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->uF:Z

    .line 2322
    :cond_3
    return-void
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1428
    const-string v0, "ContactsPerf"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    const-string v0, "ContactsPerf"

    const-string v1, "ContactsProvider2.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_0
    invoke-super {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onCreate()Z

    .line 1433
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fF()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1438
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1439
    const-string v1, "ContactsPerf"

    const-string v2, "ContactsProvider2.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    .line 1434
    :catch_0
    move-exception v0

    .line 1435
    :try_start_1
    const-string v1, "ContactsProvider"

    const-string v2, "Cannot start provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1436
    const/4 v0, 0x0

    .line 1438
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1439
    const-string v1, "ContactsPerf"

    const-string v2, "ContactsProvider2.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1438
    :catchall_0
    move-exception v0

    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1439
    const-string v1, "ContactsPerf"

    const-string v2, "ContactsProvider2.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v0
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    .line 1680
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uE:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1686
    :goto_0
    return-void

    .line 1685
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    goto :goto_0
.end method

.method public onRollback()V
    .locals 2

    .prologue
    .line 2326
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->kc:Z

    if-eqz v0, :cond_0

    .line 2327
    const-string v0, "ContactsProvider"

    const-string v1, "onRollbackTransaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2331
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->bP()V

    .line 2333
    :cond_1
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7347
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7348
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uG:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 7352
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->l(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7353
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fV()V

    .line 7354
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ProfileProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 7357
    :goto_1
    return-object v0

    .line 7350
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 7356
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fW()V

    .line 7357
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_1
.end method

.method public q(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6780
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->q(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 6781
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4933
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uG:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 4936
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->o(Landroid/net/Uri;)V

    .line 4939
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->l(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4940
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fV()V

    .line 4941
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ProfileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5000
    :goto_0
    return-object v0

    .line 4945
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fW()V

    .line 4946
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uo:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4947
    const-string v0, "directory"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4948
    if-nez v0, :cond_1

    .line 4949
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 4951
    :cond_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4952
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 4955
    :cond_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4956
    const-wide/16 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 4961
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->af(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;

    move-result-object v0

    .line 4962
    if-nez v0, :cond_4

    .line 4963
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid directory ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 4964
    goto :goto_0

    .line 4967
    :cond_4
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 4968
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4969
    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4970
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4971
    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->i:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 4972
    const-string v2, "account_name"

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4974
    :cond_5
    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountType:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 4975
    const-string v2, "account_type"

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4978
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->q(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4979
    if-eqz v0, :cond_7

    .line 4980
    const-string v2, "limit"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4983
    :cond_7
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 4985
    if-nez p2, :cond_a

    .line 4986
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->r(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    .line 4989
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4992
    if-nez v0, :cond_8

    move-object v0, v6

    .line 4993
    goto/16 :goto_0

    .line 4996
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;

    move-result-object v1

    .line 4997
    if-eqz v1, :cond_9

    .line 4998
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 5000
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->g(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move-object v2, p2

    goto :goto_1
.end method

.method public r(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 7914
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 7915
    sparse-switch v0, :sswitch_data_0

    .line 7964
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 7922
    :sswitch_0
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tB:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7926
    :sswitch_1
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tK:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7931
    :sswitch_2
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tH:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7937
    :sswitch_3
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tI:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7947
    :sswitch_4
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tM:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7950
    :sswitch_5
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tQ:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7954
    :sswitch_6
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tU:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7957
    :sswitch_7
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tV:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7961
    :sswitch_8
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->tZ:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7915
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3f7 -> :sswitch_2
        0x3f8 -> :sswitch_2
        0x3fb -> :sswitch_1
        0x7d2 -> :sswitch_3
        0x7d3 -> :sswitch_3
        0xbb9 -> :sswitch_4
        0xbba -> :sswitch_4
        0xbbb -> :sswitch_4
        0xbbd -> :sswitch_4
        0xbbe -> :sswitch_4
        0xbc1 -> :sswitch_4
        0xbc2 -> :sswitch_4
        0xfa0 -> :sswitch_5
        0x1770 -> :sswitch_6
        0x1771 -> :sswitch_6
        0x1f40 -> :sswitch_0
        0x2328 -> :sswitch_7
        0x4269 -> :sswitch_8
        0x426a -> :sswitch_8
        0x4a38 -> :sswitch_0
        0x4a39 -> :sswitch_1
        0x4a3a -> :sswitch_4
        0x4a3c -> :sswitch_2
        0x4a3d -> :sswitch_3
        0x4a3e -> :sswitch_3
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2130
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    .line 2134
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->tn:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 2135
    const/16 v2, 0x3e81

    if-ne v1, v2, :cond_1

    .line 2136
    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2137
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2138
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->aF(I)V

    .line 2155
    :goto_0
    return v0

    .line 2141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2145
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uH:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 2148
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->p(Landroid/net/Uri;)V

    .line 2150
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->l(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2151
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fV()V

    .line 2152
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->ug:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ProfileProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2154
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->fW()V

    .line 2155
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/AbstractContactsProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method updateDataUsageStat(Ljava/util/List;Ljava/lang/String;J)I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8333
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->ud:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 8334
    const-string v0, "data_id =? AND usage_type =?"

    .line 8336
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "stat_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "times_used"

    aput-object v1, v2, v0

    .line 8338
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 8339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Long;

    .line 8340
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 8341
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 8343
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "data_usage_stat"

    const-string v3, "data_id =? AND usage_type =?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 8346
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 8347
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8348
    const-string v0, "ContactsProvider"

    const-string v3, "moveToFirst() failed while getAccount() returned non-zero."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8366
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8368
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8371
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 8351
    :cond_0
    :try_start_3
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 8352
    const-string v0, "times_used"

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8353
    const-string v0, "last_time_used"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8354
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "data_usage_stat"

    const-string v4, "stat_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v10, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 8368
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 8371
    :catchall_1
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 8359
    :cond_1
    :try_start_5
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 8360
    const-string v0, "data_id"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8361
    const-string v0, "usage_type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8362
    const-string v0, "times_used"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8363
    const-string v0, "last_time_used"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8364
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "data_usage_stat"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 8375
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public y(Landroid/content/ContentValues;)J
    .locals 19
    .parameter

    .prologue
    .line 3312
    const-string v2, "im_handle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3313
    const-string v2, "protocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 3314
    const/4 v2, 0x0

    .line 3316
    if-eqz v13, :cond_1a

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    .line 3317
    const-string v2, "custom_protocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3318
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CUSTOM_PROTOCOL is required when PROTOCOL=PROTOCOL_CUSTOM"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v10, v2

    .line 3326
    :goto_0
    const-string v2, "presence_data_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 3329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3331
    if-eqz v2, :cond_c

    .line 3334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v4, "data._id=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3389
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .line 3391
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;->cq:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->rY:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) DESC, raw_contact_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 3394
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3395
    const/4 v2, 0x4

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3396
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3397
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3398
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3399
    const/4 v2, 0x5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v17

    .line 3405
    if-eqz v4, :cond_2

    .line 3406
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3410
    :cond_2
    const-string v2, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3411
    if-nez v10, :cond_3

    .line 3414
    const-string v10, ""

    .line 3417
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 3418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "presence_data_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "presence_raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "presence_contact_id"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "protocol"

    invoke-virtual {v2, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "custom_protocol"

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "im_handle"

    invoke-virtual {v2, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    const-string v2, "im_account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "im_account"

    const-string v5, "im_account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "mode"

    const-string v5, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    const-string v4, "chat_capability"

    const-string v5, "chat_capability"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uj:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "presence"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2;->is:Landroid/content/ContentValues;

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3437
    :cond_5
    const-string v2, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3438
    const-string v2, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3439
    const-string v2, "status_res_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3440
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3441
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3442
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3444
    :try_start_2
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 3450
    :cond_6
    :goto_2
    const-string v4, "status_label"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 3452
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    if-eqz v13, :cond_8

    .line 3453
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3455
    :cond_8
    const-string v4, "string"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    .line 3457
    const-string v4, "status_icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 3460
    const-string v4, "drawable"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v8}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v12

    .line 3462
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->d(J)V

    .line 3522
    :cond_9
    :goto_3
    const-wide/16 v4, -0x1

    cmp-long v2, v17, v4

    if-eqz v2, :cond_a

    .line 3523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uq:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->r(J)V

    .line 3526
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_b
    :goto_4
    return-wide v2

    .line 3339
    :cond_c
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez v13, :cond_e

    .line 3340
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "PROTOCOL and IM_HANDLE are required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3344
    :cond_e
    const/4 v2, 0x5

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    move v3, v2

    .line 3346
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aK()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 3347
    if-eqz v3, :cond_12

    .line 3348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aJ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 3356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v5, "mimetype_id IN (?,?) AND data1=? AND ((mimetype_id=? AND data5=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3364
    if-eqz v10, :cond_f

    .line 3365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v4, " AND data6=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3368
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v4, ") OR (mimetype_id=?))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    :cond_10
    :goto_6
    const-string v2, "presence_data_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v3, " AND data._id=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    const-string v3, "presence_data_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3344
    :cond_11
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_5

    .line 3371
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v3, "mimetype_id=? AND data5=? AND data1=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3377
    if-eqz v10, :cond_10

    .line 3378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->kH:Ljava/lang/StringBuilder;

    const-string v3, " AND data6=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->uc:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3402
    :cond_13
    const-wide/16 v2, -0x1

    .line 3405
    if-eqz v4, :cond_b

    .line 3406
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 3405
    :catchall_0
    move-exception v2

    move-object v3, v11

    :goto_7
    if-eqz v3, :cond_14

    .line 3406
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v2

    .line 3445
    :catch_0
    move-exception v4

    .line 3446
    const-string v4, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contact status update resource package not found: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3465
    :cond_15
    const-string v2, "status_ts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    .line 3466
    if-eqz v13, :cond_17

    .line 3467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v2 .. v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 3478
    :goto_8
    const-wide/16 v4, -0x1

    cmp-long v2, v14, v4

    if-eqz v2, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 3479
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3480
    const-string v4, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3482
    const-string v4, "text"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    const-string v4, "comments"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    const-string v4, "res_package"

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    const-string v4, "icon"

    invoke-virtual {v2, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3486
    const-string v4, "label"

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    const-string v6, "timestamp"

    if-nez v13, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3496
    if-eqz v16, :cond_16

    if-eqz v11, :cond_16

    .line 3497
    const-string v4, "account_name"

    move-object/from16 v0, v16

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    const-string v4, "account_type"

    invoke-virtual {v2, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    :cond_16
    sget-object v5, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    .line 3503
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const-string v7, "raw_contact_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v4

    .line 3508
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_19

    .line 3509
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3510
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3516
    :goto_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 3470
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->un:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_8

    .line 3487
    :cond_18
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_9

    .line 3513
    :cond_19
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/android/providers/contacts/ContactsProvider2;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    .line 3516
    :catchall_1
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3405
    :catchall_2
    move-exception v2

    move-object v3, v4

    goto/16 :goto_7

    :cond_1a
    move-object v10, v2

    goto/16 :goto_0
.end method
