.class public Lcom/android/phone/UserPLMNListPreference;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "UserPLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UserPLMNListPreference$MyHandler;,
        Lcom/android/phone/UserPLMNListPreference$PriorityCompare;,
        Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    }
.end annotation


# instance fields
.field private mAirplaneModeOn:Z

.field private mHandler:Lcom/android/phone/UserPLMNListPreference$MyHandler;

.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNewPLMN:Landroid/preference/Preference;

.field private mNumRec:I

.field private mOldInfo:Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscription:I

.field private mUPLMNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation
.end field

.field private mUPLMNListContainer:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    iput-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    new-instance v0, Lcom/android/phone/UserPLMNListPreference$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/UserPLMNListPreference$MyHandler;-><init>(Lcom/android/phone/UserPLMNListPreference;Lcom/android/phone/UserPLMNListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mHandler:Lcom/android/phone/UserPLMNListPreference$MyHandler;

    iput v1, p0, Lcom/android/phone/UserPLMNListPreference;->mNumRec:I

    iput-boolean v1, p0, Lcom/android/phone/UserPLMNListPreference;->mAirplaneModeOn:Z

    new-instance v0, Lcom/android/phone/UserPLMNListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/UserPLMNListPreference$1;-><init>(Lcom/android/phone/UserPLMNListPreference;)V

    iput-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/UserPLMNListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/phone/UserPLMNListPreference;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/UserPLMNListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/UserPLMNListPreference;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/UserPLMNListPreference;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;

    .prologue
    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/UserPLMNListPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;

    .prologue
    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/UserPLMNListPreference;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/UserPLMNListPreference;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/UserPLMNListPreference;->refreshUPLMNListPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/UserPLMNListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;

    .prologue
    invoke-direct {p0}, Lcom/android/phone/UserPLMNListPreference;->getUPLMNInfoFromEf()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/UserPLMNListPreference;)Lcom/android/phone/UserPLMNListPreference$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;

    .prologue
    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mHandler:Lcom/android/phone/UserPLMNListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/UserPLMNListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;

    .prologue
    iget v0, p0, Lcom/android/phone/UserPLMNListPreference;->mNumRec:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/UserPLMNListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/UserPLMNListPreference;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/phone/UserPLMNListPreference;->mNumRec:I

    return p1
.end method

.method private addUPLMNPreference(Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;)V
    .locals 5
    .param p1, "network"    # Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    .prologue
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .local v1, "plmnName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/UserPLMNListPreference;->getNetWorkModeString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "extendName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/phone/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createNetworkInfofromIntent(Landroid/content/Intent;)Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const-string v3, "uplmn_code"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "numberName":Ljava/lang/String;
    const-string v3, "uplmn_priority"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "priority":I
    const-string v3, "uplmn_service"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "act":I
    new-instance v3, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;-><init>(Lcom/android/phone/UserPLMNListPreference;Ljava/lang/String;II)V

    return-object v3
.end method

.method private dumpUPLMNInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpUPLMNInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-virtual {v1}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getNetWorkModeString(I)Ljava/lang/String;
    .locals 4
    .param p1, "EFNWMode"    # I

    .prologue
    invoke-static {p1}, Lcom/android/phone/NBUPLMNEditor$UPLMNEditorFragment;->convertEFMode2Ap(I)I

    move-result v0

    .local v0, "index":I
    const-string v1, ""

    .local v1, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/UserPLMNListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0

    return-object v1
.end method

.method private getUPLMNInfoFromEf()V
    .locals 2

    .prologue
    const-string v0, "UPLMNInfoFromEf Start read..."

    invoke-static {v0}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f60

    invoke-direct {p0, v0, v1}, Lcom/android/phone/UserPLMNListPreference;->readEfFromIcc(Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "UserPLMNListPreference"

    const-string v1, "mIccFileHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleAddList(Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;)V
    .locals 6
    .param p1, "newInfo"    # Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAddList: add new network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/phone/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/phone/UserPLMNListPreference$PriorityCompare;

    invoke-direct {v2, p0}, Lcom/android/phone/UserPLMNListPreference$PriorityCompare;-><init>(Lcom/android/phone/UserPLMNListPreference;)V

    .local v2, "pc":Lcom/android/phone/UserPLMNListPreference$PriorityCompare;
    iget-object v4, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v4, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .local v3, "position":I
    if-lez v3, :cond_1

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->updateListPriority(Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->handleSetUPLMN(Ljava/util/ArrayList;)V

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private handleDeleteList(Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "network"    # Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDeleteList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/phone/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    new-instance v2, Lcom/android/phone/UserPLMNListPreference$PriorityCompare;

    invoke-direct {v2, p0}, Lcom/android/phone/UserPLMNListPreference$PriorityCompare;-><init>(Lcom/android/phone/UserPLMNListPreference;)V

    .local v2, "pc":Lcom/android/phone/UserPLMNListPreference$PriorityCompare;
    iget-object v4, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v4, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .local v3, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->setOperatorNumeric(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->updateListPriority(Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    return-object v1
.end method

.method private handleModifiedList(Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "newInfo"    # Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    .param p2, "oldInfo"    # Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleModifiedList: change old info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-------new info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/phone/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    new-instance v4, Lcom/android/phone/UserPLMNListPreference$PriorityCompare;

    invoke-direct {v4, p0}, Lcom/android/phone/UserPLMNListPreference$PriorityCompare;-><init>(Lcom/android/phone/UserPLMNListPreference;)V

    .local v4, "pc":Lcom/android/phone/UserPLMNListPreference$PriorityCompare;
    iget-object v5, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v5, p2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .local v3, "oldposition":I
    iget-object v5, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-static {v5, p1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .local v2, "newposition":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-le v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->updateListPriority(Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->dumpUPLMNInfo(Ljava/util/List;)V

    return-object v1

    :cond_1
    if-ge v3, v2, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private handleSetUPLMN(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v11, 0x2

    const/16 v10, -0x80

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v5, v8}, Lcom/android/phone/UserPLMNListPreference;->onStarted(Landroid/preference/Preference;Z)V

    iget v5, p0, Lcom/android/phone/UserPLMNListPreference;->mNumRec:I

    mul-int/lit8 v5, v5, 0x5

    new-array v0, v5, [B

    .local v0, "data":[B
    const/4 v5, 0x6

    new-array v2, v5, [B

    .local v2, "mccmnc":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/phone/UserPLMNListPreference;->mNumRec:I

    if-ge v1, v5, :cond_0

    mul-int/lit8 v5, v1, 0x5

    aput-byte v6, v0, v5

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x1

    aput-byte v6, v0, v5

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    aput-byte v6, v0, v5

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x3

    aput-byte v8, v0, v5

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x4

    aput-byte v8, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    iget v5, p0, Lcom/android/phone/UserPLMNListPreference;->mNumRec:I

    if-ge v1, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    .local v3, "ni":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    invoke-virtual {v3}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .local v4, "strOperNumeric":Ljava/lang/String;
    if-nez v4, :cond_3

    .end local v3    # "ni":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    .end local v4    # "strOperNumeric":Ljava/lang/String;
    :cond_1
    const-string v5, "update EFuplmn Start."

    invoke-static {v5}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f60

    invoke-direct {p0, v5, v0, v6}, Lcom/android/phone/UserPLMNListPreference;->writeEfToIcc(Lcom/android/internal/telephony/uicc/IccFileHandler;[BI)V

    :cond_2
    return-void

    .restart local v3    # "ni":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    .restart local v4    # "strOperNumeric":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strOperNumeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-static {v4}, Lcom/android/phone/UserPLMNListPreference;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    mul-int/lit8 v5, v1, 0x5

    aget-byte v6, v2, v9

    shl-int/lit8 v6, v6, 0x4

    aget-byte v7, v2, v8

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmnc[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmnc[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v2, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data[i*UPLMN_SEL_DATA_LEN] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x5

    aget-byte v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x5

    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x4

    aget-byte v7, v2, v11

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x4

    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x4

    const/4 v7, 0x3

    aget-byte v7, v2, v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x3

    aput-byte v10, v0, v5

    :goto_2
    invoke-virtual {v3}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_5

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v6, v1, 0x5

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, v0, v6

    or-int/lit8 v6, v6, 0x40

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    :cond_5
    invoke-virtual {v3}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x4

    aput-byte v10, v0, v5

    :goto_3
    invoke-virtual {v3}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x4

    mul-int/lit8 v6, v1, 0x5

    add-int/lit8 v6, v6, 0x4

    aget-byte v6, v0, v6

    or-int/lit8 v6, v6, 0x40

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x3

    aput-byte v8, v0, v5

    goto :goto_2

    :cond_8
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x4

    aput-byte v8, v0, v5

    goto :goto_3
.end method

.method static hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "sz":I
    new-array v1, v2, [B

    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/phone/UserPLMNListPreference;->hexCharToInt(C)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hexStringToBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z

    .prologue
    const-string v0, "init ... ..."

    invoke-static {v0}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_0
    return-void
.end method

.method private loadIccFileHandler()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .local v2, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v2, :cond_0

    iget v3, p0, Lcom/android/phone/UserPLMNListPreference;->mSubscription:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newUiccApplication = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fh = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UserPLMNListPreference;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    .end local v1    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    return-void

    .end local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .restart local v2    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "UserPLMNListPreference"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readEfFromIcc(Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .locals 2
    .param p1, "mfh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "efid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mHandler:Lcom/android/phone/UserPLMNListPreference$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/UserPLMNListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    return-void
.end method

.method private refreshUPLMNListPreference(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mNewPLMN:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mNewPLMN:Landroid/preference/Preference;

    const v3, 0x7f0b040a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mNewPLMN:Landroid/preference/Preference;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mNewPLMN:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/UserPLMNListPreference;->mNewPLMN:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iput-object p1, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    if-nez p1, :cond_5

    const-string v2, "refreshUPLMNListPreference : NULL UPLMN list!"

    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    const-string v2, "refreshUPLMNListPreference : NULL UPLMN list!"

    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    if-nez p1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    :cond_4
    return-void

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshUPLMNListPreference : list.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    .local v1, "network":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->addUPLMNPreference(Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;)V

    invoke-virtual {v1}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setScreenEnabled()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/UserPLMNListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/UserPLMNListPreference;->mAirplaneModeOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/UserPLMNListPreference;->invalidateOptionsMenu()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateListPriority(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    const/4 v2, 0x0

    .local v2, "priority":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    .local v1, "info":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "priority":I
    .local v3, "priority":I
    invoke-virtual {v1, v2}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->setPriority(I)V

    move v2, v3

    .end local v3    # "priority":I
    .restart local v2    # "priority":I
    goto :goto_0

    .end local v1    # "info":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    :cond_0
    return-void
.end method

.method private writeEfToIcc(Lcom/android/internal/telephony/uicc/IccFileHandler;[BI)V
    .locals 2
    .param p1, "mfh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "efdata"    # [B
    .param p3, "efid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mHandler:Lcom/android/phone/UserPLMNListPreference$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/UserPLMNListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, p3, p2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-byte v3, p1, v1

    and-int/lit8 v0, v3, 0xf

    .local v0, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x66

    const/16 v3, 0x65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/UserPLMNListPreference;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/phone/UserPLMNListPreference;->createNetworkInfofromIntent(Landroid/content/Intent;)Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    move-result-object v0

    .local v0, "newInfo":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    if-ne p2, v4, :cond_1

    iget-object v1, p0, Lcom/android/phone/UserPLMNListPreference;->mOldInfo:Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->handleDeleteList(Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->handleSetUPLMN(Ljava/util/ArrayList;)V

    .end local v0    # "newInfo":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "newInfo":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    :cond_1
    if-ne p2, v3, :cond_0

    if-ne p1, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/phone/UserPLMNListPreference;->handleAddList(Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;)V

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_0

    iget-object v1, p0, Lcom/android/phone/UserPLMNListPreference;->mOldInfo:Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/UserPLMNListPreference;->handleModifiedList(Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->handleSetUPLMN(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->addPreferencesFromResource(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/UserPLMNListPreference;->mIsForeground:Z

    const-string v1, "button_uplmn_list_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/UserPLMNListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNListContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/UserPLMNListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/UserPLMNListPreference;->mSubscription:I

    invoke-direct {p0}, Lcom/android/phone/UserPLMNListPreference;->loadIccFileHandler()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/UserPLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/phone/UserPLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/UserPLMNListPreference;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/UserPLMNListPreference;->getSupportActionBar()Lcn/nubia/commonui/phone/actionbar/app/ActionBar;

    move-result-object v0

    .local v0, "actionBar":Lcn/nubia/commonui/phone/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UserPLMNListPreference;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    invoke-direct {p0}, Lcom/android/phone/UserPLMNListPreference;->setScreenEnabled()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/UserPLMNListPreference;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/NBUPLMNEditor;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mNewPLMN:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    const-string v2, "uplmn_code"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uplmn_priority"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "uplmn_service"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "uplmn_add"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "uplmn_size"

    iget-object v3, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/UserPLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v5

    :cond_0
    iget-object v2, p0, Lcom/android/phone/UserPLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    .local v0, "info":Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;
    iput-object v0, p0, Lcom/android/phone/UserPLMNListPreference;->mOldInfo:Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;

    const-string v2, "uplmn_code"

    invoke-virtual {v0}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uplmn_priority"

    invoke-virtual {v0}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getPriority()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "uplmn_service"

    invoke-virtual {v0}, Lcom/android/phone/UserPLMNListPreference$UPLMNInfoWithEf;->getNetworMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "uplmn_add"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "uplmn_size"

    iget-object v3, p0, Lcom/android/phone/UserPLMNListPreference;->mUPLMNList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x66

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/UserPLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/UserPLMNListPreference;->mAirplaneModeOn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    iput-boolean v1, p0, Lcom/android/phone/UserPLMNListPreference;->mIsForeground:Z

    invoke-direct {p0}, Lcom/android/phone/UserPLMNListPreference;->getUPLMNInfoFromEf()V

    invoke-direct {p0, p0, v1}, Lcom/android/phone/UserPLMNListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    invoke-virtual {p0}, Lcom/android/phone/UserPLMNListPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/UserPLMNListPreference;->mAirplaneModeOn:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
