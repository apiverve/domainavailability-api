declare module '@apiverve/domainavailability' {
  export interface domainavailabilityOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface domainavailabilityResponse {
    status: string;
    error: string | null;
    data: DomainAvailabilityData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface DomainAvailabilityData {
      domain:    null | string;
      available: boolean | null;
      owner:     Owner;
  }
  
  interface Owner {
      registrar: null | string;
  }

  export default class domainavailabilityWrapper {
    constructor(options: domainavailabilityOptions);

    execute(callback: (error: any, data: domainavailabilityResponse | null) => void): Promise<domainavailabilityResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: domainavailabilityResponse | null) => void): Promise<domainavailabilityResponse>;
    execute(query?: Record<string, any>): Promise<domainavailabilityResponse>;
  }
}
