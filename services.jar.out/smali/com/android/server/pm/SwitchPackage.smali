.class public Lcom/android/server/pm/SwitchPackage;
.super Ljava/lang/Object;
.source "SwitchPackage.java"


# static fields
.field private static final COUNTRY_INFO:Ljava/lang/String; = "US_000,IN_001,RU_002,TH_003,MY_004,CZ_005,CN_006,TR_007"

.field private static final DEFAULT_COUNTRY:Ljava/lang/String; = "US"

.field private static final DEFAULT_COUNTRY_NUMBER:Ljava/lang/String; = "000"

.field private static final DEFAULT_INSTALL:Ljava/lang/String; = "1"

.field private static final DEFAULT_NOT_INSTALL:Ljava/lang/String; = "0"

.field private static final DIFF_APK_TAG:Ljava/lang/String; = "diff_"

.field private static mCountryNumber:Ljava/lang/String;


# instance fields
.field private m_ConfigList:[Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/pm/SwitchPackage;->getCountryNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SwitchPackage;->mCountryNumber:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/SwitchPackage;->getConfigFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/SwitchPackage;->m_ConfigList:[Ljava/io/File;

    return-void
.end method

.method private static getConfigFiles()[Ljava/io/File;
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/nubia_custom/systemapp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "configDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "persist.sys.device.country"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "US"

    :cond_0
    return-object v0
.end method

.method private static getCountryNumber()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-static {}, Lcom/android/server/pm/SwitchPackage;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .local v0, "countryCode":Ljava/lang/String;
    const-string v3, "US_000,IN_001,RU_002,TH_003,MY_004,CZ_005,CN_006,TR_007"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "i":I
    if-ltz v2, :cond_0

    const-string v3, "US_000,IN_001,RU_002,TH_003,MY_004,CZ_005,CN_006,TR_007"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, "US_000,IN_001,RU_002,TH_003,MY_004,CZ_005,CN_006,TR_007"

    add-int/lit8 v4, v2, 0x3

    add-int/lit8 v5, v2, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "countryNumber":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/pm/SwitchPackage;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v1    # "countryNumber":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "000"

    goto :goto_0

    .restart local v1    # "countryNumber":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getDefaultInstallInfo(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "apkName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/android/server/pm/SwitchPackage;->isDiffApk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "s":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    const-string v1, ""

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/android/server/pm/SwitchPackage;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .end local v0    # "s":[Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "s":[Ljava/lang/String;
    :cond_0
    const-string v1, ""

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/android/server/pm/SwitchPackage;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v0, v3

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .end local v0    # "s":[Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDiffApkCountryInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "apkName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    invoke-static {p0}, Lcom/android/server/pm/SwitchPackage;->isDiffApk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "s":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v3, :cond_0

    const-string v1, ""

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/android/server/pm/SwitchPackage;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    .end local v0    # "s":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isDiffApk(Ljava/lang/String;)Z
    .locals 2
    .param p0, "apkName"    # Ljava/lang/String;

    .prologue
    const-string v1, "diff_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "i":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-string v1, "[0-9]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private static isPresetForCountry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "apkName"    # Ljava/lang/String;
    .param p1, "countryNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/server/pm/SwitchPackage;->isDiffApk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/android/server/pm/SwitchPackage;->getDiffApkCountryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "diffApkCountryInfo":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .local v0, "apkInfo":Ljava/math/BigInteger;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "countryNumInt":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    invoke-static {p0}, Lcom/android/server/pm/SwitchPackage;->getDefaultInstallInfo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .end local v0    # "apkInfo":Ljava/math/BigInteger;
    .end local v1    # "countryNumInt":Ljava/lang/Integer;
    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private searchRealConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/SwitchPackage;->m_ConfigList:[Ljava/io/File;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/SwitchPackage;->m_ConfigList:[Ljava/io/File;

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public isCountryRequireApk(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/SwitchPackage;->searchRealConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "realConfigName":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/server/pm/SwitchPackage;->mCountryNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/SwitchPackage;->isPresetForCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
