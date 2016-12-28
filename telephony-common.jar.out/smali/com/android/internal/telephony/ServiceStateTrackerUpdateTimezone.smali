.class public Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;
.super Ljava/lang/Object;
.source "ServiceStateTrackerUpdateTimezone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$1;,
        Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;
    }
.end annotation


# static fields
.field private static final ACTION_NUBIA_UPDATE_TIMEZONE:Ljava/lang/String; = "nubia.phone.action.UPDATE_TIMEZONE"

.field private static final EVENT_DELAY_SEND_UPDATE_TIMEZONE:I = 0x0

.field private static final EXTRA_ISO:Ljava/lang/String; = "iso"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final TIME_DELAY_SEND_UPDATE_TIMEZONE:I = 0x2710

.field private static mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mHandler:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mPhoneId:I

.field private mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "au"

    aput-object v2, v1, v4

    const-string v2, "Australia/Sydney"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "br"

    aput-object v2, v1, v4

    const-string v2, "America/Sao_Paulo"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ca"

    aput-object v2, v1, v4

    const-string v2, "America/Toronto"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "cl"

    aput-object v3, v2, v4

    const-string v3, "America/Santiago"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "es"

    aput-object v3, v2, v4

    const-string v3, "Europe/Madrid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fm"

    aput-object v3, v2, v4

    const-string v3, "Pacific/Ponape"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gl"

    aput-object v3, v2, v4

    const-string v3, "America/Godthab"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v4

    const-string v3, "Asia/Jakarta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "kz"

    aput-object v3, v2, v4

    const-string v3, "Asia/Almaty"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mn"

    aput-object v3, v2, v4

    const-string v3, "Asia/Ulaanbaatar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mx"

    aput-object v3, v2, v4

    const-string v3, "America/Mexico_City"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pf"

    aput-object v3, v2, v4

    const-string v3, "Pacific/Tahiti"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "pt"

    aput-object v3, v2, v4

    const-string v3, "Europe/Lisbon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ru"

    aput-object v3, v2, v4

    const-string v3, "Europe/Moscow"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "us"

    aput-object v3, v2, v4

    const-string v3, "America/New_York"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    .line 50
    iput-object v7, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->LOG_TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

    invoke-direct {v0, p0, v7}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;-><init>(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mHandler:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->sendBroadcastForTimezone(Ljava/lang/String;)V

    return-void
.end method

.method private getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 167
    if-nez p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v2

    .line 170
    :cond_1
    const/4 v1, 0x0

    .line 172
    .local v1, "tz":Ljava/util/TimeZone;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 173
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uses TimeZone of Capital City:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mTimeZoneIdOfCapitalCity:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    .line 179
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 172
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SSTUpdateTZ-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SSTUpdateTZ-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private sendBroadcastForTimezone(Ljava/lang/String;)V
    .locals 3
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    const-string v1, "phone is null. This cannot be possbile"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->loge(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nubia.phone.action.UPDATE_TIMEZONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "iso"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "phone_id"

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 163
    const-string v1, "sendBroadcastForTimezone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getNitzUpdatedTime()Z
    .locals 5

    .prologue
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNitzUpdatedTime mNitzUpdatedTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, "nitzUpdatedTime":Z
    sget-object v3, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 94
    .local v1, "nitzUT":Z
    if-eqz v1, :cond_0

    .line 95
    const/4 v2, 0x1

    .line 99
    .end local v1    # "nitzUT":Z
    :cond_1
    return v2
.end method

.method public handleTimezoneFromTzdata(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p2, "iso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->getNitzUpdatedTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v2

    .line 106
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 112
    .local v1, "currTimeZone":Ljava/util/TimeZone;
    const/4 v2, 0x0

    .line 113
    .local v2, "tzID":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 124
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimezoneFromTzdata timezone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->getTimeZonesWithCapitalCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    if-nez v2, :cond_3

    .line 118
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mHandler:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mHandler:Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;

    invoke-virtual {v4, v5, v5, v5, p2}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone$SSTUpdateTZhandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public handleTimezoneFromUser()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 129
    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    const-string v10, "gsm.operator.iso-country"

    const-string v11, ""

    invoke-static {v9, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "iso":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-object v7

    .line 134
    :cond_1
    invoke-static {v4}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 135
    .local v8, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 139
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 140
    .local v5, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 142
    .local v1, "currTimeZone":Ljava/util/TimeZone;
    const/4 v7, 0x0

    .line 143
    .local v7, "tzID":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 144
    .local v2, "currTimezoneOffset":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TimeZone;

    .line 145
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, v2, :cond_2

    .line 146
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    .line 150
    .end local v6    # "tz":Ljava/util/TimeZone;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleTimezoneFromUser tz="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNitzUpdatedTime(Z)V
    .locals 3
    .param p1, "nitzUpdatedTime"    # Z

    .prologue
    .line 86
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNitzUpdatedTime mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->mNitzUpdatedTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTrackerUpdateTimezone;->log(Ljava/lang/String;)V

    .line 88
    return-void
.end method
