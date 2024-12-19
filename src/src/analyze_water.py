def analyze_water_properties(water_sample):
    """
    Analyzes water properties to extract frequencies and calculate energy signatures.

    Args:
        water_sample (list): Data points representing a water sample.

    Returns:
        float: Energy signature of the water sample.
    """
    def extract_frequencies(water_sample):
        return [frequency for molecule in water_sample]
    
    def calculate_energy_signature(frequencies):
        return sum(frequencies)
    
    frequencies = extract_frequencies(water_sample)
    energy_signature = calculate_energy_signature(frequencies)
    return energy_signature
